import numpy as np
from scipy.integrate import ode
import lorenz96
from settings import *

error_std = 0.1

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

Q = np.eye(N) * error_std **2
def dX_P_dt(t, X_P, N, F):
    """
    Compute the time derivatives of state vector x and covariance matrix P.
    X_P: Flattened vector containing both x (size N) and P (size N*N).
    """
    x = X_P[:N]  # Extract state vector x
    P = X_P[N:].reshape((N, N))  # Extract covariance matrix P
    

    # print(x)
    # dx/dt
    dx_dt = lorenz96.f(t, x, F)
    # print(dx_dt)

    # dP/dt using the tangent linear model
    J = lorenz96_jacobian(x)  # Jacobian matrix at current state
    print(J)
    # J = J.T
    dP_dt = np.dot(J, P) + np.dot(J, P).T + Q # No process noise for simplicity


    # Combine into a single flattened array
    return np.concatenate([dx_dt, dP_dt.flatten()])

# Initial setup
error_std = 0.1  # Observation error standard deviation
jump_obs = 2  # Jump step for observations (you can change this if needed)
assimilation_interval = 1  # Specify how many cycles to skip before assimilation

# Load initial condition and observations
x_a_init = np.genfromtxt('x_a_init.txt')
y_o_save = np.loadtxt('x_o.txt')

# Initialize variables
x_b_save = np.full((1, N), np.nan, dtype='f8')
x_a_save = np.array([x_a_init])

# Initial covariance matrices
H = np.zeros((N // jump_obs, N))  # N // jump_obs rows for observations
for i in range(N // jump_obs):
    H[i, jump_obs * i] = 1  # Every `jump_obs` points in the state are observed

# Observation error covariance R
R = np.eye(H.shape[0]) * error_std**2 
P_a = np.eye(N) * error_std**2  # Initial analysis error covariance
Q = np.eye(N) * error_std**2  # Process noise covariance

tt = 1
while tt <= nT:
    tts = tt - 1
    Ts = tts * dT  # Forecast start time
    Ta = tt * dT  # Forecast end time (DA analysis time)
    print(f'Cycle = {tt}, Ts = {round(Ts, 10)}, Ta = {round(Ta, 10)}')

    # Combine x and P into a single array for integration
    X_P_init = np.concatenate([x_a_save[tts], P_a.flatten()])
    # J        = return_J(X_P_init, N, F)

    # Integrate x and P together

    solver = ode(dX_P_dt).set_integrator('dopri5')
    solver.set_initial_value(X_P_init, Ts).set_f_params(N, F)
    solver.integrate(Ta)

    # Extract forecast state and covariance
    X_P_forecast = solver.y
    x_b = X_P_forecast[:N]  # Background state
    P_f = X_P_forecast[N:].reshape((N, N))  # Background error covariance

    # Save background state
    x_b_save = np.vstack([x_b_save, [x_b]])

    # Perform assimilation only after every `assimilation_interval` cycles
    if tt % assimilation_interval == 0:
        # -------------- Analysis step --------------
        # Observation
        y_o = y_o_save[tt, ::jump_obs]

        # Innovation
        y_b = np.dot(H, x_b)
        d = y_o - y_b

        # Kalman gain
        HBHT_R_inv = np.linalg.inv(np.dot(H, np.dot(P_f, H.T)) + R)  # (HPH^T + R)^-1
        K = np.dot(P_f, np.dot(H.T, HBHT_R_inv))

        # Analysis state
        x_a = x_b + np.dot(K, d)
        x_a_save = np.vstack([x_a_save, x_a])

        # Analysis error covariance
        P_a = np.dot(np.eye(N) - np.dot(K, H), P_f)
    else:
        # No assimilation; carry forward background as analysis
        x_a_save = np.vstack([x_a_save, x_b])

    tt += 1



# Save background and analysis data
np.savetxt('x_b_EKF_t05.txt', x_b_save)
np.savetxt('x_a_EKF_t05.txt', x_a_save)

