clc;
clear;

lamda = 1;        % fixed parameter
rou = 0;          % fixed parameter
p_value = 1.0;    % varied parameter ---- [0.55,5.0] with step 0.05

disp('Randomly generating training and testing dataset ... ...');
% load dataset
[X1, Y1, X2, Y2] = mackey_data;
% [X1, Y1, X2, Y2] = autos_data;
% [X1, Y1, X2, Y2] = calhousing_data;
% [X1, Y1, X2, Y2] = deltaailerons_data;

[TrainingTime, Training_RMSE, Testing_RMSE, Testing_NDEI, num_cloud, Total_Para] = LMDPEFS_global(X1, Y1, X2, Y2, p_value, lamda, rou);
% [TrainingTime, Training_RMSE, Testing_RMSE, Testing_NDEI, num_cloud, Total_Para] = LMDPEFS_local(X1, Y1, X2, Y2, p_value);




