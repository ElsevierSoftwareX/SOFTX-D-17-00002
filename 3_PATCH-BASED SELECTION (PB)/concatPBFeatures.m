function [PBC64,PBC32,PBC16] = concatPBFeatures(PBvariable1,PBvariable2,PBvariable3,Size)

%%%%%%% 64x64 %%%%%%%

        PB64=PBvariable1;       
        PBCx64=load(PB64(1).name);    
        PBCx64=PBCx64.zigPB;

        for i=2:40 %% Number of 64x64 size patch in 128x128 %%
            PBCy64=load(PB64(i).name);
            PBCy64=PBCy64.zigPB;
            PBCx64=[PBCx64; PBCy64];  
            i
        end

        PBC64=PBCx64;   
        PBC64(isinf(PBC64))=0;

        save('Birlesik_IR_PB64x64.mat','PBC64');

%%%%%%% 32x32 %%%%%%%
 
        PB32=PBvariable2;
        PBCx32=load(PB32(1).name);          
        PBCx32=PBCx32.zigPB;

        for i=2:160 %% Number of 32x32 size patch in 128x128 %%
            PBCy32=load(PB32(i).name);
            PBCy32=PBCy32.zigPB;
            PBCx32=[PBCx32; PBCy32]; 
            i
        end

        PBC32=PBCx32;
        PBC32(isinf(PBC32))=0;

        save('Birlesik_IR_PB32x32.mat','PBC32');

%%%%%%% 16x16 %%%%%%%

        PB16=PBvariable3;      
        PBCx16=load(PB16(1).name);         
        PBCx16=PBCx16.zigPB;

        for i=2:640 %% Number of 16x16 size patch in 128x128 %%
            PBCy16=load(PB16(i).name);
            PBCy16=PBCy16.zigPB;
            PBCx16=[PBCx16; PBCy16];  
            i
        end

        PBC16=PBCx16;
        PBC16(isinf(PBC16))=0;

        save('Birlesik_IR_PB16x16.mat','PBC16');

end

