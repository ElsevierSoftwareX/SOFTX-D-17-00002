clear all;
close all;
clc;

%%% SELECT IMAGE DATABASE %%%

    directoryres = dir(strcat('IR*.bmp'));  
    [p, r] = size(directoryres);

    xa = 0;
    t = 0;

    imageSize = 16; %% Start dimension %%

for t = 0:2
    t = t+1;
    
    if  t == 3
        t = t-1;
    end
    
    imageSize = imageSize*t;

    for ii = 1:p

%%%%%%% READ IMAGE %%%%%%%

        resAd = directoryres(ii).name;      % resmin adi aliniyor
        veri = rgb2gray(imread(resAd)); 

%%%%%%% IMAGE RESIZE %%%%%%%

        veri = imresize(veri,[imageSize imageSize]);

%%%%%%% PREPROCESSING %%%%%%% 

        [globalYLBP] = prepLBP(veri);

%%%%%%% FEATURE EXTRACTION %%%%%%%

        [LBP] = extractLBPFeatures(globalYLBP,ii);

        ii
    end

end

%%% FEATURE CONCATENATION %%%

    LBP64 = dir('*LBPC64x64.mat');  
    LBP32 = dir('*LBPC32x32.mat');
    LBP16 = dir('*LBPC16x16.mat'); 

    [LBPC64,LBPC32,LBPC16] = concatLBPFeatures(LBP64,LBP32,LBP16,p);

%%% MAKE ARFF FILE %%%

    [arffdataLBP] = arffLBP(LBPC64,LBPC32,LBPC16,p);

