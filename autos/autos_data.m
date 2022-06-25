
function [X1, Y1, X2, Y2] = autos_data

autos_train = load('autos_train');
autos_test = load('autos_test');
load autos_noise.mat;

TRAIN=autos_train;
TEST=autos_test;

Y1 = TRAIN(:,16);
X1 = TRAIN(:,1:15);
Y2 = TEST(:,16);
X2 = TEST(:,1:15);

%     --------------uniform noise (dev0.2)------------------------------------
%      Y1 = Y1 + unifrnd(-0.4,0.4,size(Y1,1),1);
%     --------------gauss noise (dev0.2)------------------------------------
      Y1 = Y1 + normrnd(0,0.16,size(Y1,1),1);
%     --------------inpluse noise--------------------------------------------
%      Y1 = Y1 + y_train';
%     --------------inpluse noise + gauss noise (dev0.2)-----------------
%      Y1 = Y1 + y_train' + normrnd(0,0.16,size(Y1,1),1);
%     ----------------------------------------------------------------------
end


    