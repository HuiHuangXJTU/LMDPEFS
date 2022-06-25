
function [X1, Y1, X2, Y2] = calhousing_data
calhousing_train = load('calhousing_train');
calhousing_test = load('calhousing_test');
load calhousing_noise.mat;
TRAIN=calhousing_train;
TEST=calhousing_test;

Y1 = TRAIN(:,9);
X1 = TRAIN(:,1:8);
Y2 = TEST(:,9);
X2 = TEST(:,1:8);

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












    