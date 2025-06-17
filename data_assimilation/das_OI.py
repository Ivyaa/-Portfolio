"""
The data assimilation system (OI with NMC method and user-defined assimilation interval)
Load:
  x_a_init.txt
Save:
  x_b_OI.txt
  x_a_OI.txt
"""
import numpy as np
from scipy.integrate import ode
import lorenz96
from settings import *

# Initial settings
error_std = 0.1  # Observation error standard deviation
t1, t2 = 0.2, 0.4  # NMC method forecast lengths
alpha = 0.5  # Rescaling factor for B
assimilation_interval = 4  # Specify how many cycles to skip before assimilation

# Load initial condition
x_a_init = np.genfromtxt('x_a_init.txt')

# Load observations
y_o_save = np.loadtxt('x_o.txt')

# Initial x_b: no values at the initial time (assign NaN)
x_b_save = np.full((1, N), np.nan, dtype='f8')

# Initial x_a: from x_a_init
x_a_save = np.array([x_a_init])

# NMC-related arrays for storing forecasts
forecast_t1 = []
forecast_t2 = []

# OI R & H
jump_obs = 1
H = np.zeros((N // jump_obs, N))  # H maps every `jump_obs` points from state to observed space
for i in range(N // jump_obs):
    H[i, jump_obs * i] = 1

# Observation error covariance R
R = np.eye(H.shape[0]) * error_std**2

# Save covariance matrices for analysis
B_matrices = []

# Time stepping
tt = 1


while tt <= nT:
    tts = tt - 1
    Ts = tts * dT  # Forecast start time
    Ta = tt * dT  # Forecast end time
    print(f"Cycle = {tt}, Ts = {round(Ts, 10)}, Ta = {round(Ta, 10)}")

    # --------------
    # Forecast step
    # --------------
    solver = ode(lorenz96.f).set_integrator('dopri5')
    solver.set_initial_value(x_a_save[tts], Ts).set_f_params(F)
    solver.integrate(Ta)
    x_b_save = np.vstack([x_b_save, [solver.y]])

    # --------------
    # Analysis step
    # --------------
    if (tt-1) % assimilation_interval == 0:
        # Perform assimilation only for specified cycles
        x_b = x_b_save[tt].transpose()

        # Observation
        y_o = y_o_save[tt, ::jump_obs]

        # Innovation
        y_b = np.dot(H, x_b)
        d = y_o - y_b

        B = np.eye(N) * error_std

        # Save B for later analysis
        B_matrices.append(B)

        # Kalman gain K
        HBHT_R_inv = np.linalg.inv(np.dot(H, np.dot(B, H.T)) + R)  # (HBH^T + R)^-1
        K = np.dot(B, np.dot(H.T, HBHT_R_inv))

        # Analysis scheme
        x_a = x_b + np.dot(K, d)
    else:
        # Skip assimilation; analysis equals background
        x_a = x_b_save[tt].transpose()

    x_a_save = np.vstack([x_a_save, x_a.transpose()])
    tt += 1

# Save background and analysis data
np.savetxt('x_b_OI_t05.txt', x_b_save)
np.savetxt('x_a_OI_t05.txt', x_a_save)