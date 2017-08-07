function [RSC128,RSC64,RSC32,RSC16,RSC8,RSC4,RSC2] = concatRSFeatures(RSvariable1,RSvariable2,RSvariable3,RSvariable4,RSvariable5,RSvariable6,RSvariable7,Size)

    %%128x128%%

    RSC128=RSvariable1;      
    RSCx128=load(RSC128(1).name);            
    RSCx128=RSCx128.RSzig128;

    for i=2:Size
        RSCy128=load(RSC128(i).name);
        RSCy128=RSCy128.RSzig128;
        RSCx128=[RSCx128; RSCy128];   
        i
    end

    RSC128=RSCx128;
    RSC128(isinf(RSC128))=0;

    save('Birlesik_IR_RSC128x128.mat','RSC128');

    %%64x64%%

    RSC64=RSvariable2;       
    RSCx64=load(RSC64(1).name);           
    RSCx64=RSCx64.RSzig64;

    for i=2:Size
        RSCy64=load(RSC64(i).name);
        RSCy64=RSCy64.RSzig64;
        RSCx64=[RSCx64; RSCy64];  
        i
    end

    RSC64=RSCx64;
    RSC64(isinf(RSC64))=0;

    save('Birlesik_IR_RSC64x64.mat','RSC64');

    %%32x32%%

    RSC32=RSvariable3;
    RSCx32=load(RSC32(1).name);           
    RSCx32=RSCx32.RSzig32;

    for i=2:Size
        RSCy32=load(RSC32(i).name);
        RSCy32=RSCy32.RSzig32;
        RSCx32=[RSCx32; RSCy32];  
        i
    end

    RSC32=RSCx32;
    RSC32(isinf(RSC32))=0;

    save('Birlesik_IR_RSC32x32.mat','RSC32');

    %%16x16%%

    RSC16=RSvariable4;      
    RSCx16=load(RSC16(1).name);            
    RSCx16=RSCx16.RSzig16;

    for i=2:Size
        RSCy16=load(RSC16(i).name);
        RSCy16=RSCy16.RSzig16;
        RSCx16=[RSCx16; RSCy16];   
        i
    end

    RSC16=RSCx16;
    RSC16(isinf(RSC16))=0;

    save('Birlesik_IR_RSC16x16.mat','RSC16');

    %%8x8%%

    RSC8=RSvariable5;
    RSCx8=load(RSC8(1).name);           
    RSCx8=RSCx8.RSzig8;

    for i=2:Size
        RSCy8=load(RSC8(i).name);
        RSCy8=RSCy8.RSzig8;
        RSCx8=[RSCx8; RSCy8];  
        i
    end

    RSC8=RSCx8;
    RSC8(isinf(RSC8))=0;
    
    save('Birlesik_IR_RSC8x8.mat','RSC8');

    %%4x4%%

    RSC4=RSvariable6;        
    RSCx4=load(RSC4(1).name);           
    RSCx4=RSCx4.RSzig4;

    for i=2:Size
        RSCy4=load(RSC4(i).name);
        RSCy4=RSCy4.RSzig4;
        RSCx4=[RSCx4; RSCy4];  
        i
    end

    RSC4=RSCx4;
    RSC4(isinf(RSC4))=0;

    save('Birlesik_IR_RSC4x4.mat','RSC4');

    %%2x2%%

    RSC2=RSvariable7;        
    RSCx2=load(RSC2(1).name);          
    RSCx2=RSCx2.RSzig2;

    for i=2:Size
        RSCy2=load(RSC2(i).name);
        RSCy2=RSCy2.RSzig2;
        RSCx2=[RSCx2; RSCy2];  
        i
    end

    RSC2=RSCx2;
    RSC2(isinf(RSC2))=0;

    save('Birlesik_IR_RSC2x2.mat','RSC2');

end

