clear all;
close all;
clc;

%% Aluminium
timeal = [0, 10.1, 15, 20, 25, 30.1, 35, 40.1, 45, 50.1, 55, 60, 65, 70.1, 75, 80.2, 85.1, 90.1, 95, 100.1, 105, 110.1, 115, 120.1, 125, 130.1, 135, 140.1, 145, 150.1, 155, 160.1, 165, 170.1, 175, 180.1, 185, 190.1];
massal = [239.2, 238.78, 238.56, 238.34, 238.14, 237.92, 237.7, 237.5, 237.28, 237.06, 320.78, 314.54, 309.16, 304.14, 300, 296.32, 292.52, 289.28, 286, 282.76, 279.86, 277.04, 274.52, 271.98, 269.42, 267.02, 264.48, 261.16, 255.24, 252.22, 251.92, 251.68, 251.44, 251.2, 250.98, 250.76, 250.56, 250.4];

figure(1)

plot(timeal, massal, ".", "Markersize", 10); grid on; hold on;
xlim([0 200])
ylim([200 330])
t = [0, 10.1, 15, 20, 25, 30.1, 35, 40.1, 45, 50.1];
m = [239.2, 238.78, 238.56, 238.34, 238.14, 237.92, 237.7, 237.5, 237.28, 237.06];
pm = polyfit(t, m, 1)

plot(t, polyval(pm, t), "LineWidth", 1.5)

tpa = [150.1, 155, 160.1, 165, 170.1, 175, 180.1, 185, 190.1];
mpa = [252.22, 251.92, 251.68, 251.44, 251.2, 250.98, 250.76, 250.56, 250.4];
ppa = polyfit(tpa, mpa, 1)

plot(tpa, polyval(ppa, tpa), "LineWidth", 1.5)
text(10, 250, "m = -0.04277t + 239.205; R^2 = 0.999")
text(125, 240, "m = -0.0455t + 258.98; R^2 = 0.995")
legend("Datapoints", "Fit before introducing the sample", "Fit after introducing the sample")
xlabel("Time (s)")
ylabel("Mass (g)")
title("Introduction of aluminium in liquid nitrogen")
%% Steel

timest = [0, 10.1, 15, 20, 25, 30.1, 35, 40.1, 45, 50.1, 55, 60, 65, 70.1, 75, 80.2, 85.1, 90.1, 95, 100.1, 105, 110.1, 115, 120.1, 125, 130.1, 135, 140.1, 145, 150.1, 155, 160.1, 165, 170.1, 175, 180.1, 185, 190.1, 195, 200.1, 205];
massst = [160.18, 159.84, 159.66, 159.52, 159.32, 159.16, 159, 158.84, 158.7, 158.54, 245.86, 242.68, 240.1, 237.52, 235.08, 232.8, 230.72, 228.72, 226.88, 225.1, 223.5, 221.94, 220.56, 219.2, 217.92, 216.7, 215.62, 214.66, 213.64, 210.4, 208.12, 207.72, 207.48, 207.3, 207.12, 206.96, 206.82, 206.68, 206.54, 206.4, 206.24];

figure(2) 

plot(timest, massst, ".", "Markersize", 10); grid on; hold on;
xlim([0 210])

tcr = [0, 10.1, 15, 20, 25, 30.1, 35, 40.1, 45, 50.1];
mcr = [160.18, 159.84, 159.66, 159.52, 159.32, 159.16, 159, 158.84, 158.7, 158.54];
pcr = polyfit(tcr, mcr, 1)

plot(tcr, polyval(pcr, tcr), "LineWidth", 1.5)

tps = [155, 160.1, 165, 170.1, 175, 180.1, 185, 190.1, 195, 200.1, 205];
mps = [208.12, 207.72, 207.48, 207.3, 207.12, 206.96, 206.82, 206.68, 206.54, 206.4, 206.24];
pps = polyfit(tps, mps, 1)

plot(tps, polyval(pps, tps), "LineWidth", 1.5)
text(10, 170, "m = -0.3283 + 160.164; R^2 = 0.999")
text(125, 200, "m = -0.03170 + 212.71; R^2 = 0.993")
legend("Datapoints", "Fit before introducing the sample", "Fit after introducing the sample")
xlabel("Time (s)")
ylabel("Mass (g)")
title("Introduction of steel in liquid nitrogen")

%% Brass
timebr = [0, 10.1, 15, 20, 25, 30.1, 35, 40.1, 45, 50.1, 55, 60, 65, 70.1, 75, 80.2, 85.1, 90.1, 95, 100.1, 105, 110.1, 115, 120.1, 125, 130.1, 135, 140.1, 145, 150.1, 155, 160.1, 165, 170.1, 175, 180.1, 185, 190.1, 195, 200.1];
massbr = [115.5, 115.24, 115.08, 115, 114.86, 114.72, 114.58, 114.42, 114.28, 114.16, 114.04, 113.88, 113.78, 201.8, 199.3, 196.82, 194.6, 192.48, 190.58, 188.68, 187.04, 185.46, 183.98, 182.66, 181.38, 180.26, 179.14, 178.12, 177.18, 176.18, 175.32, 174.46, 172.32, 170.44, 170.12, 169.92, 169.6, 169.4, 169.08, 168.88];
figure(3)

plot(timebr, massbr, ".", "Markersize", 10); grid on; hold on;
xlim([0 210])

tbr = [0, 10.1, 15, 20, 25, 30.1, 35, 40.1, 45, 50.1, 55, 60, 65];
mbr = [115.5, 115.24, 115.08, 115, 114.86, 114.72, 114.58, 114.42, 114.28, 114.16, 114.04, 113.88, 113.78];
pbr = polyfit(tbr, mbr, 1)

plot(tbr, polyval(pbr, tbr), "LineWidth", 1.5);

tbs = [170.1, 175, 180.1, 185, 190.1, 195, 200.1];
mbs = [170.44, 170.12, 169.92, 169.6, 169.4, 169.08, 168.88];
pbs = polyfit(tbs, mbs, 1)

plot(tbs, polyval(pbs, tbs), "LineWidth", 1.5);
text(10, 120, "m = -0.02683 + 115,510; R^2 = 0.999")
text(125, 160, "m = -0.05210 + 179.28; R^2 = 0.996")
legend("Datapoints", "Fit before introducing the sample", "Fit after introducing the sample")
xlabel("Time (s)")
ylabel("Mass (g)")
title("Introduction of brass in liquid nitrogen")