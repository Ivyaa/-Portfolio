import numpy as np
import matplotlib.pyplot as plt

# Load data
x_t = np.loadtxt('x_t.txt')  # true state
x_a = np.loadtxt('x_a_OI_t05.txt')  # analysis state (EKF output)
x_b = np.loadtxt('x_b.txt')  # background state (forecast)

x_ao = np.loadtxt('x_a_3dvar_t05.txt')  # analysis state (EKF output)
# # x_bo = np.loadtxt('x_b_OI_t10.txt')  # background state (forecast)

# x_a3 = np.loadtxt('x_a_3dvar_t20.txt')  # analysis state (EKF output)
# x_b3 = np.loadtxt('x_b_OI_t20.txt')  # background state (forecast)

x_aa = np.loadtxt('x_a_EKF_11Q_t10.txt')  # analysis state (EKF output)
# x_b = np.loadtxt('x_b_OI_t05.txt')  # background state (forecast)

# x_aoo = np.loadtxt('x_a_OI_t10.txt')  # analysis state (EKF output)
# # x_bo = np.loadtxt('x_b_OI_t10.txt')  # background state (forecast)

x_a33 = np.loadtxt('x_a_EKF_11Q_t20.txt')  # analysis state (EKF output)
# x_b3 = np.loadtxt('x_b_OI_t20.txt')  # background state (forecast)

# Parameters
Tmax = 10.  # total simulation time
nT, N = x_t.shape  # nT: number of time steps, N: state dimensions
dt = Tmax / (nT - 1)  # time step size
time = np.linspace(0, Tmax, nT)  # time array from 0 to Tmax

# Function to calculate RMSE and Bias
def calc_rmse_bias(truth, estimate):
    """
    Calculate RMSE and Bias between truth and estimate.
    """
    diff = estimate - truth
    rmse = np.sqrt(np.mean(diff**2, axis=1))  # RMSE over all state dimensions
    bias = np.mean(diff, axis=1)  # Bias over all state dimensions
    return rmse, bias

# Compute RMSE and Bias
rmse_no_da, bias_no_da = calc_rmse_bias(x_t, x_b)  # No DA (background)
rmse_1, bias_1 = calc_rmse_bias(x_t, x_a)  
rmse_2, bias_2 = calc_rmse_bias(x_t, x_ao)  
# rmse_3, bias_3 = calc_rmse_bias(x_t, x_a3)  

rmse_4, bias_4 = calc_rmse_bias(x_t, x_aa)  
# rmse_5, bias_5 = calc_rmse_bias(x_t, x_aoo)  
rmse_6, bias_6 = calc_rmse_bias(x_t, x_a33)  

# Plot results
plt.figure(figsize=(10, 6))

# RMSE plots


# plt.plot(time, rmse_no_da, 'b-', label ='Tw = 0.05 - RMSE noDA')
# plt.plot(time, bias_no_da, 'b--', label='Tw = 0.05 - Bias noDA')


plt.plot(time, rmse_1, 'g-', label ='Tw = 0.1 - RMSE OI')
plt.plot(time, bias_1, 'g--', label='Tw = 0.1 - Bias OI')

plt.plot(time, rmse_2, 'r-', label ='Tw = 0.1 - RMSE 3Dvar')
plt.plot(time, bias_2, 'r--', label='Tw = 0.1 - Bias 3Dvar')

# plt.plot(time, rmse_4, 'o-', label ='Tw = 0.1  - RMSE EKF noQ')
# plt.plot(time, bias_4, 'o--', label='Tw = 0.1  - Bias EKF noQ')


# plt.plot(time, rmse_5, 'k-', label ='Tw = 0.1  - RMSE OI')
# plt.plot(time, bias_5, 'k--', label='Tw = 0.1  - Bias OI')

# plt.plot(time, rmse_6, 'y-', label ='Tw = 0.2  - RMSE EKF 1.1Q')
# plt.plot(time, bias_6, 'y--', label='Tw = 0.2  - RMSE EKF 1.1Q')

# Labels and legend
plt.title('OI vs 3Dvar [OBS_20P]')
plt.xlabel('t')
plt.ylabel('Value')
plt.legend(loc="right")
plt.grid()

# Set axis limits
plt.ylim(-2, 6)  # Y-axis range
plt.xlim(0, Tmax)  # X-axis range

# Save and show plot
plt.tight_layout()
plt.savefig('rmse_bias_OI3Dvar_t2040P.png', dpi=300)
plt.show()