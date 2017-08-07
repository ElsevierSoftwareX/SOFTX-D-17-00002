function [CS] = selectCSFeatures(zigCS,ii)

         k=ii;
         directoryres = dir(strcat('*.bmp'));     
         resAd = directoryres(k).name;   
    
%%%%%%%% FEATURE SELECTION %%%%%%%%
    
         CS=zigCS;
         CSzig128 = CS(1,1:16383);
         CSzig64  = CS(1,1:4096);
         CSzig32  = CS(1,1:1024);
         CSzig16  = CS(1,1:256);
         CSzig8   = CS(1,1:64);
         CSzig4   = CS(1,1:16);
         CSzig2   = CS(1,1:4);
    
%%%%%%% SAVING FEATURES %%%%%%%

        filename128 = sprintf('%s_%s.mat', resAd(1:end-4),'CS128x128');
        filename64  = sprintf('%s_%s.mat', resAd(1:end-4),'CS64x64');
        filename32  = sprintf('%s_%s.mat', resAd(1:end-4),'CS32x32');
        filename16  = sprintf('%s_%s.mat', resAd(1:end-4),'CS16x16');
        filename8   = sprintf('%s_%s.mat', resAd(1:end-4),'CS8x8');
        filename4   = sprintf('%s_%s.mat', resAd(1:end-4),'CS4x4');
        filename2   = sprintf('%s_%s.mat', resAd(1:end-4),'CS2x2');

        save(filename128,'CSzig128');
        save(filename64,'CSzig64');
        save(filename32,'CSzig32');
        save(filename16,'CSzig16');
        save(filename8,'CSzig8');
        save(filename4,'CSzig4');
        save(filename2,'CSzig2');

end

    
    
