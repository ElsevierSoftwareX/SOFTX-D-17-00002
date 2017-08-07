function [HOGC64,HOGC32,HOGC16] = concatHOGFeatures(HOGvariable1,HOGvariable2,HOGvariable3,Size)

         p = Size;

%%%%%%%% 64x64 %%%%%%%%

         HOG64 = HOGvariable1;       
         HOGCFeature64 = load(HOG64(1).name);            
         HOGCFeature64 = HOGCFeature64.feature;

         for i = 2:p
             HOGCy64 = load(HOG64(i).name);
             HOGCy64 = HOGCy64.feature;
             HOGCFeature64 = [HOGCFeature64; HOGCy64];   
             i
         end

         HOGC64 = HOGCFeature64;
         HOGC64(isinf(HOGC64))=0;

         save('Birlesik_IR_HOG64x64.mat','HOGC64');

%%%%%%%% 32x32 %%%%%%%%

         HOG32 = HOGvariable2;
         HOGCFeature32 = load(HOG32(1).name);            
         HOGCFeature32 = HOGCFeature32.feature;

         for i = 2:p
             HOGCy32 = load(HOG32(i).name);
             HOGCy32 = HOGCy32.feature;
             HOGCFeature32 = [HOGCFeature32; HOGCy32];   
             i
         end

         HOGC32 = HOGCFeature32;
         HOGC32(isinf(HOGC32))=0;

         save('Birlesik_IR_HOG32x32.mat','HOGC32');

%%%%%%% 16x16 %%%%%%%%

        HOG16 = HOGvariable3;      
        HOGCFeature16 = load(HOG16(1).name);          
        HOGCFeature16 = HOGCFeature16.feature;

        for i = 2:p
            HOGCy16 = load(HOG16(i).name);
            HOGCy16 = HOGCy16.feature;
            HOGCFeature16 = [HOGCFeature16; HOGCy16];   
            i
        end

        HOGC16 = HOGCFeature16;
        HOGC16(isinf(HOGC16))=0;

        save('Birlesik_IR_HOG16x16.mat','HOGC16');

end

