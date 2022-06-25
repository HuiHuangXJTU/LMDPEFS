
function [X1, Y1, X2, Y2] = deltaailerons_data
deltaailerons_train = load('deltaailerons_train');
deltaailerons_test = load('deltaailerons_test');
load deltaailerons_noise.mat;
TRAIN=deltaailerons_train;
TEST=deltaailerons_test;

Y1 = TRAIN(:,6);
X1 = TRAIN(:,1:5);
Y2 = TEST(:,6);
X2 = TEST(:,1:5);

%     --------------uniform noise (dev0.2)------------------------------------
%      Y1 = Y1 + unifrnd(-0.4,0.4,size(Y1,1),1);
%     --------------gauss noise (dev0.2)------------------------------------
%      Y1 = Y1 + normrnd(0,0.16,size(Y1,1),1);
%     --------------inpluse noise--------------------------------------------
%      Y1 = Y1 + y_train';
%     --------------inpluse noise + gauss noise (dev0.2)-----------------
      Y1 = Y1 + y_train' + normrnd(0,0.16,size(Y1,1),1);
%     ----------------------------------------------------------------------

end

















