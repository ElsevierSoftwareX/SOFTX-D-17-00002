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

    globalYRS = prepRS(veri);

%%% FEATURE EXTRACTION %%%
    
    zigRS = zigzagRS(globalYRS,ii);

%%% FEATURE SELECTION %%%
    
    [RS] = selectRSFeatures(zigRS,ii);
    
    ii

end

%%% CONCATENATION %%%

    RS128 = dir('*RS128x128.mat');  
    RS64  = dir('*RS64x64.mat');  
    RS32  = dir('*RS32x32.mat');  
    RS16  = dir('*RS16x16.mat');  
    RS8   = dir('*RS8x8.mat');  
    RS4   = dir('*RS4x4.mat');  
    RS2   = dir('*RS2x2.mat');  

    [RSC128,RSC64,RSC32,RSC16,RSC8,RSC4,RSC2] = concatRSFeatures(RS128,RS64,RS32,RS16,RS8,RS4,RS2,p);

%%% MAKE ARFF FILE %%%

    [arffdataRS] = arffRS(RSC128,RSC64,RSC32,RSC16,RSC8,RSC4,RSC2,p);



