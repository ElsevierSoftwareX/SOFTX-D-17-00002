function [Patch4,Patch3,Patch2,Patch1] = Patch_Analysis(~,~,~,~,~)

%%%%%%% 4.Patch Analysis (64x64) Anaysis %%%%%%%

directoryPB4 = dir(strcat('*0004_PBC64x64.mat')); 
[p4, ~]=size(directoryPB4);

    PB4name = directoryPB4(1).name;      
    PB4Cx64 = load((PB4name));  
    PB4Cx64 = PB4Cx64.zigPB;

    for i4 = 2:p4 %% Number of 4.patch (64x64 size) patch in 128x128 %%
        PB4Cy64=load(directoryPB4(i4).name);
        PB4Cy64=PB4Cy64.zigPB;
        PB4Cx64=[PB4Cx64; PB4Cy64];  
        i4
    end

    PB4C64=PB4Cx64;
    PB4C64(isinf(PB4C64))=0;

    save('Birlesik_IR_PB64x64_4Patch.mat','PB4C64');
    
    Patch4=PB4C64;   


%%%%%%% 3.Patch Analysis (64x64) Anaysis %%%%%%%

directoryPB3 = dir(strcat('*0003_PBC64x64.mat')); 
[p3, ~]=size(directoryPB3);

    PB3name = directoryPB3(1).name;      
    PB3Cx64 = load((PB3name));  
    PB3Cx64 = PB3Cx64.zigPB;

    for i3 = 2:p3 %% Number of 3.patch (64x64 size) patch in 128x128 %%
        PB3Cy64=load(directoryPB3(i3).name);
        PB3Cy64=PB3Cy64.zigPB;
        PB3Cx64=[PB3Cx64; PB3Cy64];  
        i3
    end

    PB3C64=PB3Cx64;
    PB3C64(isinf(PB3C64))=0;
    save('Birlesik_IR_PB64x64_3Patch.mat','PB3C64');
    
    Patch3=PB3C64;   


%%%%%%% 2.Patch Analysis (64x64) Anaysis %%%%%%%

directoryPB2 = dir(strcat('*0002_PBC64x64.mat')); 
[p2, ~]=size(directoryPB2);

    PB2name = directoryPB2(1).name;      
    PB2Cx64 = load((PB2name));  
    PB2Cx64 = PB2Cx64.zigPB;

    for i2 = 2:p2 %% Number of 2.patch (64x64 size) patch in 128x128 %%
        PB2Cy64=load(directoryPB2(i2).name);
        PB2Cy64=PB2Cy64.zigPB;
        PB2Cx64=[PB2Cx64; PB2Cy64];  
        i2
    end

    PB2C64=PB2Cx64;
    PB2C64(isinf(PB2C64))=0;
    save('Birlesik_IR_PB64x64_2Patch.mat','PB2C64');
        
    Patch2=PB2C64;   


%%%%%%% 1.Patch Analysis (64x64) Anaysis %%%%%%%

directoryPB1 = dir(strcat('*0001_PBC64x64.mat')); 
[p1, ~]=size(directoryPB1);

    PB1name = directoryPB1(1).name;      
    PB1Cx64 = load((PB1name));  
    PB1Cx64 = PB1Cx64.zigPB;

    for i1 = 2:p1 %% Number of 4.patch (64x64 size) patch in 128x128 %%
        PB1Cy64=load(directoryPB1(i1).name);
        PB1Cy64=PB1Cy64.zigPB;
        PB1Cx64=[PB1Cx64; PB1Cy64];  
        i1
    end

    PB1C64=PB1Cx64;
    PB1C64(isinf(PB4C64))=0;
    save('Birlesik_IR_PB64x64_1Patch.mat','PB1C64');
        
    Patch1=PB1C64;   
    
end
