% CLEAR THE WORKSPACE
clear 
close all
clc

% Create a sample matrix
glucose_data = [5.3 18.5 16.1 12.3 7.5 6.2 5.2 5.4 5.7 5.8 5.7;
    5.5 18.8 15.2 11.3 5.3 2.4 3.8 5.9 6.3 5.7 6.3;
    5.7 17.5 14.8 11.8 7.9 4.7 3.3 3.6 5.3 5.7 6;
    5.4 18.4 15.7 11.9 6.5 3.7 3.8 4.4 5 5.4 5.3;
    6.3 19.5 18.7 13.2 6.9 3.9 4.4 5.1 5.8 5.7 6.2;
    6.7 22.1 15.4 12.1 5.8 3.2 4.1 4.9 5.5 5.9 5.9;
    5.5 18.6 18.1 14.5 8.8 5.9 4.7 4.4 5 5.1 5.6;
    5.3 19.7 17 13.9 8.7 4.9 2.9 3.7 3.9 3.9 4.1;
    5 19.5 16.8 13 7 2.8 3.5 4.4 5 4.6 4.7;
    6.1 18 16 11.6 5.1 2.4 3.4 4.9 5.9 5.7 5.5;
    5.8 19.4 15.9 13.3 5.3 2.2 4.4 5.1 5 5 4.9;
    5.4 18.9 17.4 12.9 5.9 2.4 3.5 4.2 4 4.4 4.5;
    5.8 19.4 16.6 13.2 9 6 4.4 5.3 6 6.2 6.2;
    6.3 18.2 16.5 13.6 9.5 6.5 5.3 4.7 5 4.7 4.9;
    5.2 20.1 16.9 12.4 4.4 1.5 4.1 5.4 5.3 5.3 5.4;
    6.3 20.1 17.2 13.2 6.3 2.7 3.7 5.2 5.7 5.8 6;
    6.2 20.1 17.3 13.3 6.5 2.8 3.4 5.3 5.7 5.5 5.8];

insulin_data = [0.06 0.46 0.45 0.51 0.24 0.05 0.03 0.02 0.02 0.02 0.03;
    0.05 1.04 0.98 0.95 0.29 0.07 0.02 0.08 0.08 0.03 0.07;
    0.07 0.69 0.54 0.60 0.30 0.08 0.04 0.03 0.04 0.06 0.05;
    0.02 0.23 0.17 0.27 0.07 0.03 0.01 0.01 0.01 0.02 0.01;
    0.02 0.34 0.38 0.34 0.13 0.03 0.02 0.02 0.02 0.06 0.03;
    0.02 0.40 0.35 0.32 0.08 0.02 0.00 0.00 0.02 0.02 0.01;
    0.02 0.18 0.22 0.26 0.17 0.03 0.01 0.01 0.01 0.02 0.02;
    0.01 0.41 0.41 0.57 0.47 0.08 0.02 0.01 0.00 0.01 0.01;
    0.01 0.43 0.46 0.71 0.32 0.08 0.02 0.01 0.06 0.03 0.02;
    0.02 0.36 0.39 0.53 0.16 0.05 0.02 0.02 0.16 0.02 0.04;
    0.05 0.43 0.53 0.65 0.16 0.05 0.02 0.07 0.01 0.02 0.08;
    0.00 0.42 0.49 0.52 0.25 0.05 0.01 0.00 0.00 0.00 0.01;
    0.07 0.56 0.54 0.62 0.41 0.10 0.02 0.06 0.06 0.10 0.08;
    0.01 0.30 0.38 0.49 0.33 0.07 0.01 0.00 0.00 0.01 0.02;
    0.02 0.36 0.32 0.61 0.16 0.04 0.01 0.03 0.02 0.04 0.05;
    0.04 0.43 0.49 0.73 0.24 0.05 0.01 0.01 0.03 0.06 0.04;
    0.07 0.39 0.39 0.55 0.17 0.06 0.01 0.01 0.04 0.02 0.08];

glucagon_data = [10.9 5.9 2.6 1.2 1.1 1.8 6.5 32.7 35.0 36.2 32.0;
    5.8 2.1 1.8 1.5 1.7 4.9 46.2 14.3 5.9 5.5 8.8;
    7.0 4.2 2.0 1.3 3.3 4.8 12.9 12.4 9.9 9.0 14.4;
    9.0 4.9 3.0 2.7 2.3 2.7 5.4 6.8 12.4 14.8 16.9;
    5.7 2.4 0.8 0.6 1.2 4.8 31.9 17.6 11.2 8.1 9.6;
    8.7 5.3 4.4 3.5 3.0 8.3 17.9 13.1 7.0 5.8 7.9;
    7.9 3.0 1.3 2.0 1.8 5.7 13.0 11.0 6.6 7.0 5.9];

glucagon_numbers = [9 11 12 15 16 17 18];

% Specify the folder name
foldername = 'Pig Data';

% Specify the filename for the .mat file
glucose_filename = fullfile(foldername, 'all_pig_glucose_data.mat');
insulin_filename = fullfile(foldername, 'all_pig_insulin_data.mat');
glucagon_filename = fullfile(foldername, 'all_pig_glucagon_data.mat');


% Save the matrix to the .mat file
save(glucose_filename, 'glucose_data');
save(insulin_filename, 'insulin_data');
save(glucagon_filename, 'glucagon_data');