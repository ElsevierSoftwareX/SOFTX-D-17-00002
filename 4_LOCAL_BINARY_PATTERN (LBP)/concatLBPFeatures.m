function [LBPC64,LBPC32,LBPC16] = concatLBPFeatures(LBPvariable1,LBPvariable2,LBPvariable3,Size)

         p = Size;

%%%%%%%% 64x64 %%%%%%%%

         LBP64 = LBPvariable1;       
         LBPCx64 = load(LBP64(1).name);          
         LBPCx64 = LBPCx64.x;

         for i = 2:p
             LBPCy64 = load(LBP64(i).name);
             LBPCy64 = LBPCy64.x;
             LBPCx64 = [LBPCx64; LBPCy64];  
             i
         end

         LBPC64 = LBPCx64;
         LBPC64(isinf(LBPC64))=0;

         save('Birlesik_IR_LBP64x64.mat','LBPC64');

%%%%%%%% 32x32 %%%%%%%%

         LBP32 = LBPvariable2;
         LBPCx32 = load(LBP32(1).name);            
         LBPCx32 = LBPCx32.x;

         for i = 2:p
             LBPCy32 = load(LBP32(i).name);
             LBPCy32 = LBPCy32.x;
             LBPCx32 = [LBPCx32; LBPCy32]; 
             i
         end

         LBPC32 = LBPCx32;
         LBPC32(isinf(LBPC32))=0;

         save('Birlesik_IR_LBP32x32.mat','LBPC32');

%%%%%%%% 16x16 %%%%%%%%

         LBP16 = LBPvariable3;      
         LBPCx16 = load(LBP16(1).name);           
         LBPCx16 = LBPCx16.x;

         for i = 2:p
             LBPCy16 = load(LBP16(i).name);
             LBPCy16 = LBPCy16.x;
             LBPCx16 = [LBPCx16; LBPCy16];  
             i
         end

         LBPC16 = LBPCx16;
         LBPC16(isinf(LBPC16))=0;

         save('Birlesik_IR_LBP16x16.mat','LBPC16');

end

