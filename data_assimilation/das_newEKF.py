# -*- coding: utf-8 -*-
"""
Created on Mon Dec 16 14:34:31 2024

@author: X415EP
"""

import numpy as np
from scipy.integrate import ode
import lorenz96
from settings import *

def lorenz96_jacobian(x):
    """
    Calculate the Jacobian matrix of the Lorenz 96 model.
    """
    N = len(x)
    J = np.zeros((N, N))
    for i in range(N):
        J[i, (i - 2) % N] = -x[(i - 1) % N]
        J[i, (i - 1) % N] = x[(i - 2) % N] - x[(i + 1) % N]
        J[i, i] = -1
        J[i, (i + 1) % N] = x[i]

    return J


# EKF Parameters
error_std = 0.1
assimilation_interval = 1
jump_obs = 1
Q = np.eye(N) * (error_std ** 2)  # Process noise covariance
R = np.eye(N // jump_obs) * (error_std ** 2)  # Observation noise covariance

# Load initial conditions and observations
x_a_init = np.genfromtxt('x_a_init.txt')
y_o_save = np.loadtxt('x_o.txt')

# Setup observation operator H
H = np.zeros((N // jump_obs, N))
for i in range(N // jump_obs):
    H[i, jump_obs * i] = 1

# Initial covariance
P_a = np.eye(N) * (error_std ** 2)

# Storage for results
x_a_save = np.array([x_a_init])
x_b_save = []

# EKF Loop
tt = 1
while tt <= nT:
    tts = tt - 1
    Ts = tts * dT  # Start time
    Ta = tt * dT   # End time
    
    # Integrate state x
    solver = ode(lorenz96.f).set_integrator('dopri5')
    solver.set_initial_value(x_a_save[tts], Ts).set_f_params(F)
    solver.integrate(Ta)
    x_b = solver.y  # Forecast state
    
    # Propagate covariance P using tangent linear model
    # P_f = propagate_covariance(P_a, x_a_save[tts], dT, N, Q, steps=10)
    
    # Save background state
    x_b_save.append(x_b)
    
    # Analysis step (only every assimilation_interval)
    if tt % assimilation_interval == 0:
        y_o = y_o_save[tt, ::jump_obs]
        d = y_o - np.dot(H, x_b)  # Innovation
        
        # Kalman gain
        M = np.eye(len(x_b)) + 0.05 * lorenz96_jacobian(x_b)
        P_f = M @ P_a @ M.T 
        
        S = np.dot(H, np.dot(P_f, H.T)) + R  # Innovation covariance
        K = np.dot(P_f, np.dot(H.T, np.linalg.inv(S)))
        
        # Update analysis state and covariance
        x_a = x_b + np.dot(K, d)
        P_a = np.dot(np.eye(N) - np.dot(K, H), P_f) + 1.1 * Q
        
        # Save analysis
        x_a_save = np.vstack([x_a_save, x_a])
    else:
        # No assimilation; carry forward background
        x_a_save = np.vstack([x_a_save, x_b])
    
    # Increment cycle
    tt += 1

# Save results
np.savetxt('x_b_EKF_11Q_t05.txt', np.array(x_b_save))
np.savetxt('x_a_EKF_11Q_t05.txt', x_a_save)
