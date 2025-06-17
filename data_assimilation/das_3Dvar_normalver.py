import numpy as np
from scipy.integrate import ode
from scipy.optimize import minimize
import lorenz96
from settings import *

def Jac(x):
    B_term = (1/2) * ((x_b-x).T) @ np.linalg.inv(B) @ (x_b-x)
    R_term = (1/2) *(y_o - H @ x).T @ np.linalg.inv(R) @ (y_o - H @ x)
    J = B_term + R_term
    return J

def G_Jac(x):
    G_J = np.linalg.inv(B) @ (x-x_b) - H.T @ np.linalg.inv(R) @ (y_o - H @ x)
    print(G_J)
    return G_J.sum()

# Initial settings
error_std = 0.1  # Std deviation for observation error

# Assimilation interval (adjust this to set how often to assimilate)
assimilation_interval = 1  # Perform assimilation every 3 cycles, for example

# Load initial condition
x_a_init = np.genfromtxt('x_a_init.txt')

# Load observations
y_o_save = np.loadtxt('x_o.txt')

# Initial x_b: no values at the initial time (assign NaN)
x_b_save = np.full((1, N), np.nan, dtype='f8')

# Initial x_a: from x_a_init
x_a_save = np.array([x_a_init])

# NMC-related arrays for storing forecasts
forecast_t1 = []  # Forecasts at t1
forecast_t2 = []  # Forecasts at t2
diff_n = np.zeros((N, N))  # Accumulated differences for NMC

# Observation operator H
jump_obs = 1
H = np.zeros((N // jump_obs, N))  # Maps state space to observation space
for i in range(N // jump_obs):
    H[i, jump_obs * i] = 1  # Observe every `jump_obs` points in the state

# Observation error covariance matrix
R = np.eye(H.shape[0]) * error_std**2  # Size matches observation space

# Save all B matrices for later analysis
B_matrices = []

# Time stepping
tt = 1
while tt <= nT:
    tts = tt - 1
    Ts = tts * dT  # Forecast start time
    Ta = tt * dT  # Forecast end time (DA analysis time)
    print(f"Cycle = {tt}, Ts = {round(Ts, 10)}, Ta = {round(Ta, 10)}")

    # -------------- 
    # Forecast step
    # --------------
    # Perform background forecast
    solver = ode(lorenz96.f).set_integrator('dopri5')
    solver.set_initial_value(x_a_save[tts], Ts).set_f_params(F)
    solver.integrate(Ta)
    x_b_save = np.vstack([x_b_save, [solver.y]])

    # Background state
    x_b = x_b_save[tt].transpose()

    # Observation at time step
    y_o = y_o_save[tt, ::jump_obs]  # Skip observations

    # Innovation vector
    y_b = np.dot(H, x_b)  # Project background to observation space
    d = y_o - y_b  # Innovation vector

    B = np.eye(N) * error_std**2  # Default B if insufficient NMC data

    # --------------
    # Analysis step (3D-Var)
    # --------------
    if (tt-1) % assimilation_interval == 0:  # Perform assimilation based on the interval
        
        result = minimize(Jac, x_b, method='BFGS') 
        x_b = result.x
        x_a = x_b
        x_a_save = np.vstack([x_a_save, x_a.transpose()])

    else:
        # If no assimilation for this cycle, simply store the background
        x_a = x_b
        x_a_save = np.vstack([x_a_save, x_a.transpose()])

    tt += 1

# Save background, analysis, and B matrices
np.savetxt('x_b_3dvar_t20.txt', x_b_save)
np.savetxt('x_a_3dvar_t20.txt', x_a_save)
np.save('B_matrices.npy', B_matrices)
