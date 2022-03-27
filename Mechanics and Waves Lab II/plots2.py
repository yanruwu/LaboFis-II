import numpy as np 
import matplotlib.pyplot as plt 


l = [0.0056, 0.0052, 0.0049, 0.0045, 0.0042, 0.0039]
dl = [0.0001] * len(l)

v1 = [0.2240, 0.2340, 0.2450, 0.2475, 0.2520, 0.2535]
dv1 = [0.0069, 0.0069, 0.0070, 0.0071, 0.0073, 0.0076]

v4 = [0.269345188, 0.277185118, 0.283850463, 0.293989334, 0.302711128, 0.312587546]
dv4 = [0.001837701, 0.002113875, 0.002357855, 0.002746359, 0.003098381, 0.003518069]

print(l, dl)

plt.ylabel('Velocity (m/s)')
plt.xlabel(r'$\lambda$ (m)')
#plt.scatter(l, v1, s = 8, color = "red")
plt.errorbar(l, v1, yerr = dv1, xerr = dl, color = "red", label = "Phase velocity with eq. 1", ls = "None", lw = 1, fmt = ".")
plt.scatter(l, v4, s = 8, color = "blue")
plt.errorbar(l, v4, yerr = dv4, xerr = dl, color = "blue", label = "Phase velocity with eq. 4", ls = "None", lw = 1, fmt = ".")

plt.grid(True, which = "both", ls=":")
plt.legend(loc = "upper right")
plt.ylim([0, 0.5])

plt.show()