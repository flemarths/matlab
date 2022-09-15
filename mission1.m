%% Phase 1 :


clear all, clc, close all;

% SANCHEZ Arthur
% TP1

%%
clear all, clc, close all;

load R42_temperature.mat


% 1. Affichage :
% plot(temps,temperature,'-o','MarkerIndices',1:100,'LineWidth',2)


% 2. Temperatures extremes
[temperature_maximale,jour_temperature_max] = max(temperature)
[temperature_minimale,jour_temperature_min] = min(temperature)

% 3. Calibration des analyses

n=0;
[valMin,jour]=min(abs(temperature))

% 4. Robustesse des analyses

temperatureModif = temperature

for i=1:100
    temperatureModif(i)=temperature(i)+(2*rand-1);
end

plot(temps,temperature,'-o','MarkerIndices',1:100,'LineWidth',2,'Color','b');
hold on;
plot(temps,temperatureModif,'-o','MarkerIndices',1:100,'LineWidth',2,'Color','g');


% 5. Fiabilité du capteur

tempInt = temperature
for i=1:100
    tempInt(i) = floor(temperature(i));
end

IndiceDesZeros = find (tempInt==0);

temperature(IndiceDesZeros) = 0;

temperature




