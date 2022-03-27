from cmath import pi, sqrt
import numpy as np 
import matplotlib.pyplot as plt
#3.5 (Q4.6)
v = lambda g, l, s, p: np.sqrt(g*l/(2*np.pi) + 2*np.pi*s/(p*l))
vg = lambda g, l, s, p: (g*p + 3*(2*np.pi/l)**2 * s)/(2*(2*np.pi/l)*p*np.sqrt(g*l/(2*np.pi) + 2*pi*s/(p*l)))
cut = lambda g, s, p: 2*np.pi * np.sqrt(s/(g*p))

g = 9.8
s = 5.68 * 10**(-2)
p = 998.7

lin = np.arange(0.003, 0.020, 0.0005).tolist()
vi = []
vgi = []

for elem in lin:
    vi.append(v(g, elem, s, p))
    vgi.append(vg(g, elem, s, p))

#cut
lc = cut(g, s, p)
vc = v(g, lc, s, p)


plt.ylabel('Velocity (m/s)')
plt.xlabel(r'$\lambda$ (m)')
plt.scatter(lc, vc, s = 9, color="black", label = "Curves intercept")
plt.plot(lin, vi, color = "red", label = "Phase velocity")
plt.plot(lin, vgi, color = "blue", label = "Group velocity")

plt.grid(True, which = "both", ls=":")
plt.legend(loc = "upper right")

plt.show()


