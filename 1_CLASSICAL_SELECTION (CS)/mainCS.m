clear all;
close all;
clc;

%%% SELECT IMAGE DATABASE %%%

   directoryres = dir(strcat('IR*.bmp'));  
   [p, r]=size(directoryres);

for ii = 1:p
    
%%% READ IMAGE %%%

    resAd = directoryres(ii).name;     
    veri = imread(resAd);   
    
%%% PREPROCESSING %%% 

    globalYCS = prepCS(veri);

%%% FEATURE EXTRACTION %%%

    zigCS=zigzagCS(globalYCS,ii);

%%% FEATURE SELECTION %%%

    [CS] = selectCSFeatures(zigCS,ii);

    ii

end

%%% FEATURE CONCATENATION %%%

    CS128 = dir('*CS128x128.mat');  
    CS64  = dir('*CS64x64.mat');  
    CS32  = dir('*CS32x32.mat');  
    CS16  = dir('*CS16x16.mat');  
    CS8   = dir('*CS8x8.mat');  
    CS4   = dir('*CS4x4.mat');  
    CS2   = dir('*CS2x2.mat');  

    [CSC128,CSC64,CSC32,CSC16,CSC8,CSC4,CSC2] = concatCSFeatures(CS128,CS64,CS32,CS16,CS8,CS4,CS2,p);

%%% MAKE ARFF FILE %%%

    [arffdataCS] = arffCS(CSC128,CSC64,CSC32,CSC16,CSC8,CSC4,CSC2,p);
