function [CSC128,CSC64,CSC32,CSC16,CSC8,CSC4,CSC2] = concatCSFeatures(CSvariable1,CSvariable2,CSvariable3,CSvariable4,CSvariable5,CSvariable6,CSvariable7,Size)

%%% 128x128 %%%

    CSC128=CSvariable1;      
    CSCx128=load(CSC128(1).name);            
    CSCx128=CSCx128.CSzig128;

    for i=2:Size
        CSCy128=load(CSC128(i).name);
        CSCy128=CSCy128.CSzig128;
        CSCx128=[CSCx128; CSCy128];
        i
    end

    CSC128=CSCx128;
    CSC128(isinf(CSC128))=0;

    save('Birlesik_IR_CSC128x128.mat','CSC128');

%%% 64x64 %%%

    CSC64=CSvariable2;       
    CSCx64=load(CSC64(1).name);           
    CSCx64=CSCx64.CSzig64;

    for i=2:Size
        CSCy64=load(CSC64(i).name);
        CSCy64=CSCy64.CSzig64;
        CSCx64=[CSCx64; CSCy64];  
        i
    end

    CSC64=CSCx64;
    CSC64(isinf(CSC64))=0;

    save('Birlesik_IR_CSC64x64.mat','CSC64');

%%% 32x32 %%%

    CSC32=CSvariable3;
    CSCx32=load(CSC32(1).name);            
    CSCx32=CSCx32.CSzig32;

    for i=2:Size
        CSCy32=load(CSC32(i).name);
        CSCy32=CSCy32.CSzig32;
        CSCx32=[CSCx32; CSCy32];  
        i
    end

    CSC32=CSCx32;
    CSC32(isinf(CSC32))=0;
    
    save('Birlesik_IR_CSC32x32.mat','CSC32');

%%% 16x16 %%%

    CSC16=CSvariable4;      
    CSCx16=load(CSC16(1).name);           
    CSCx16=CSCx16.CSzig16;

    for i=2:Size
        CSCy16=load(CSC16(i).name);
        CSCy16=CSCy16.CSzig16;
        CSCx16=[CSCx16; CSCy16];   
        i
    end

    CSC16=CSCx16;
    CSC16(isinf(CSC16))=0;

    save('Birlesik_IR_CSC16x16.mat','CSC16');

%%% 8x8 %%%

    CSC8=CSvariable5;
    CSCx8=load(CSC8(1).name);           
    CSCx8=CSCx8.CSzig8;

    for i=2:Size
        CSCy8=load(CSC8(i).name);
        CSCy8=CSCy8.CSzig8;
        CSCx8=[CSCx8; CSCy8];  
        i
    end

    CSC8=CSCx8;
    CSC8(isinf(CSC8))=0;

    save('Birlesik_IR_CSC8x8.mat','CSC8');

%%% 4x4 %%%

    CSC4=CSvariable6;        
    CSCx4=load(CSC4(1).name);          
    CSCx4=CSCx4.CSzig4;

    for i=2:Size
        CSCy4=load(CSC4(i).name);
        CSCy4=CSCy4.CSzig4;
        CSCx4=[CSCx4; CSCy4];   
        i
    end

    CSC4=CSCx4;
    CSC4(isinf(CSC4))=0;

    save('Birlesik_IR_CSC4x4.mat','CSC4');

%%% 2x2 %%%

    CSC2=CSvariable7;        
    CSCx2=load(CSC2(1).name);           
    CSCx2=CSCx2.CSzig2;

    for i=2:Size
        CSCy2=load(CSC2(i).name);
        CSCy2=CSCy2.CSzig2;
        CSCx2=[CSCx2; CSCy2];   
        i
    end

    CSC2=CSCx2;
    CSC2(isinf(CSC2))=0;

    save('Birlesik_IR_CSC2x2.mat','CSC2');

end

