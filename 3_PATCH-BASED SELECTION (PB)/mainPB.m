clear all;
close all;
clc;

%%% SELECT IMAGE DATABASE %%%

    directoryres = dir(strcat('IR*.bmp'));  
    [p, r]=size(directoryres);

    xa=0;
    t=0;
    patchSize=16;

for t=0:2
    t=t+1;
    
    if t==3
       t=t-1;
    end
    
    patchSize=patchSize*t;

for ii=1:p

%%% READ IMAGE %%%

    resAd = directoryres(ii).name;      
    veri = rgb2gray(imread(resAd));  
   
    k=0;
            
    for xx=1:patchSize:128
        for yy=1:patchSize:128

%%%%%%%%%%% PATCH MAKE %%%%%%%%%%%

            patch= veri(max(1,yy):min(yy+patchSize-1,size(veri,1)), max(1,xx):min(xx+patchSize-1,size(veri,2)), :);
            patch=double(patch(:,:));

%%%%%%%%%%% PREPROCESSING %%%%%%%%%%%

            [globalYPB] = prepPB(patch,ii);

%%%%%%%%%%% FEATURE EXTRACTION %%%%%%%%%%%
            
            zigPB=zigzagPB(globalYPB,ii);

%%%%%%%%%%% SAVING FEATURE %%%%%%%%%%%

            k=k+1;  
            [temps] = patchNumber(k);      
            filename = sprintf('%s_%s_%s%d%s%d.mat', resAd(1:end-4),temps,'PBC',patchSize,'x',patchSize);
            save(filename,'zigPB')
    
            zigPB=0;

        end
    end
            
    ii
end


end

%%% FEATURE CONCATENATION %%%%

    PB64  = dir('*PBC64x64.mat');  
    PB32  = dir('*PBC32x32.mat');
    PB16  = dir('*PBC16x16.mat'); 

    [PBC64,PBC32,PBC16] = concatPBFeatures(PB64,PB32,PB16,p);

%%% MAKE ARFF FILE %%%

    [arffdataPB] = arffPB(PBC64,PBC32,PBC16,p);

    directoryPB4 = dir(strcat('*0004_PBC64x64.mat'));  
    directoryPB3 = dir(strcat('*0003_PBC64x64.mat'));  
    directoryPB2 = dir(strcat('*0002_PBC64x64.mat'));  
    directoryPB1 = dir(strcat('*0001_PBC64x64.mat')); 

    [p, ~]=size(directoryPB1);


%%% CONCATENATION OF PATCH FEATURE %%%

    [Patch4,Patch3,Patch2,Patch1] = Patch_Analysis(directoryPB4,directoryPB3,directoryPB2,directoryPB1,p);

%%% MAKE ARFF OF PATCH FILE %%%

    [arffPatch4,arffPatch3,arffPatch2,arffPatch1] = arff_Patch_Analysis(Patch4,Patch3,Patch2,Patch1,p);
