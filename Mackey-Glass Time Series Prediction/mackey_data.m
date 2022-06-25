function [X1, Y1, X2, Y2] = mackey_data

mackey_train = load('mackey_train');
mackey_test = load('mackey_test');
load mackey_noise.mat;
for i = 1:size(mackey_train,2)
    mackey_train(:,i) = (mackey_train(:,i) - min(mackey_train(:,i)))/...
        (max(mackey_train(:,i)) - min(mackey_train(:,i)));
end
for i = 1:size(mackey_test,2)
    mackey_test(:,i) = (mackey_test(:,i) - min(mackey_test(:,i)))/...
        (max(mackey_test(:,i)) - min(mackey_test(:,i)));
end
TRAIN=mackey_train;
TEST=mackey_test;

Y1 = TRAIN(:,5);
X1 = TRAIN(:,1:4);
Y2 = TEST(:,5);
X2 = TEST(:,1:4);

%     --------------uniform noise (dev0.2)------------------------------------
      Y1 = Y1 + unifrnd(-0.4,0.4,size(Y1,1),1);
%     --------------gauss noise (dev0.2)------------------------------------
%      Y1 = Y1 + normrnd(0,0.16,size(Y1,1),1);
%     --------------inpluse noise--------------------------------------------
%      Y1 = Y1 + y_train';
%     --------------inpluse noise + gauss noise (dev0.2)-----------------
%      Y1 = Y1 + y_train' + normrnd(0,0.16,size(Y1,1),1);
%     ----------------------------------------------------------------------

end

    
    
    
    