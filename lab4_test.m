clc; close all; clear all; 
importing('binMNIST.mat');
% importdata('binMNIST');

inputnum = size(bindata_trn, 2);
outputnum = [50 75 100 150];

epochs = 20;

opt.Verbose = true;
opt.CalcError = true;
opt.MaxIter = epochs;
opt.StepRatio = 0.1;

for h_nodes = 1:length(outputnum)
    rbm = randRBM(inputnum, outputnum(h_nodes));
   rbm = pretrainRBM(rbm, bindata_trn, opt)
% plot(rmse)
%     figure
%     plot(error1); hold on; plot(error2);
end