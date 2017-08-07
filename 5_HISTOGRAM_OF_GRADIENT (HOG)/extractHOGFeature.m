function [HOG] = extractHOGFeature(globalYHOG,patchSize,ii)

         k = ii;
         directoryres = dir(strcat('IR*.bmp'));
         resAd = directoryres(k).name; 
        
%%%%%%%% FEATURE EXTRACTION %%%%%%%%

         [feature,~] = extractHOGFeatures(globalYHOG);

%%%%%%%% SAVING FEATURE %%%%%%%%

         filename = sprintf('%s_%s%d%s%d.mat', resAd(1:end-4),'HOGC',patchSize,'x',patchSize);
         save(filename,'feature');

         HOG = feature;

end


