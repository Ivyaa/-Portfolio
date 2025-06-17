import numpy as np
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec

# Load the nature run data
x_t_save = np.loadtxt('x_t.txt')

# Settings for observation errors
# standard deviation of the normal distribution
# for reproducibility
error_std = 0.1
np.random.seed(42)  

# Create observation data by adding random normal errors
obs_error = error_std * np.random.randn(*x_t_save.shape)
x_o_save = x_t_save + obs_error
print(np.shape(obs_error))
print("error_std:", np.std(obs_error), "error_mean:", np.mean(obs_error))
print(np.cov(obs_error).shape)
print((np.eye(x_t_save.shape[1]) * error_std**2).shape)
# Save observation data
np.savetxt('x_o.txt', x_o_save)

# Plotting: Check error distribution and correlation
# Select two grid points for scatter plot
error_1 = obs_error[:, 0]  # errors at the 1st grid point
error_2 = obs_error[:, 1]  # errors at the 2nd grid point

# Plotting: Combined scatter and histogram plot
plt.figure(figsize=(8, 8))
gs = GridSpec(4, 4)

# Scatter plot (central panel)
ax_scatter = plt.subplot(gs[1:4, 0:3])
ax_scatter.scatter(error_1, error_2, alpha=0.7, color='blue', s=10)
ax_scatter.set_xlabel(r"$\epsilon_1^{o,k}$", fontsize=12)
ax_scatter.set_ylabel(r"$\epsilon_2^{o,k}$", fontsize=12)
ax_scatter.set_title("Scatter Diagram", fontsize=14)
ax_scatter.grid(True, linestyle='--', alpha=0.5)

# Histogram for error_1 (top panel)
ax_hist_x = plt.subplot(gs[0, 0:3], sharex=ax_scatter)
ax_hist_x.hist(error_1, bins=20, color='blue', alpha=0.7)
ax_hist_x.axis('tight')
# ax_hist_x.set_ylabel("Frequency", fontsize=10)
ax_hist_x.tick_params(axis="x", labelbottom=False)
ax_hist_x.grid(True, linestyle='--', alpha=0.5)

# Histogram for error_2 (right panel)
ax_hist_y = plt.subplot(gs[1:4, 3], sharey=ax_scatter)
ax_hist_y.hist(error_2, bins=20, orientation='horizontal', color='blue', alpha=0.7)
ax_hist_y.axis('tight')
# ax_hist_y.set_xlabel("Frequency", fontsize=10)
ax_hist_y.tick_params(axis="y", labelleft=False)
ax_hist_y.grid(True, linestyle='--', alpha=0.5)

plt.tight_layout()
plt.show()
# plt.savefig("pic/observation_error.png", dpi=300)
