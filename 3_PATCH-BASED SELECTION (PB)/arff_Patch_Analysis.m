function [arffPatch4,arffPatch3,arffPatch2,arffPatch1] = arff_Patch_Analysis(ARFFvariable4,ARFFvariable3,ARFFvariable2,ARFFvariable1,~)
    
%%%%%%%% ARFF 4.Patch (64x64) %%%%%%%%

         name64_4 = 'Birlesik_IR_PB64x64_4Patch';
         datafeature4_64x64 = ARFFvariable4;        

         label_PatchAnalysis = (xlsread('label64.xlsx'));
         datafeature4_64x64(:,4096) = label_PatchAnalysis(:,1);

         dataname4_64x64arff = sprintf('%s%s',name64_4(1:end),'.arff');
         fileID4 = fopen(dataname4_64x64arff,'w');
         data14_64x64 = sprintf('%s %s','@relation', dataname4_64x64arff);
         fprintf(fileID4,'%s\n',data14_64x64);

         for tsa4 = 1:4095
             data24_64x64 = sprintf('%s %s%d %s','@attribute', 'f_',tsa4, 'numeric');    
             fprintf(fileID4,'%6s\n',data24_64x64);
         end

         data34_64x64 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID4,'%s\n',data34_64x64);

         data44_64x64 = sprintf('%s','@data');
         fprintf(fileID4,'%s\n',data44_64x64);

         data54_64x64 = sprintf('%s',dataname4_64x64arff);
         dlmwrite(data54_64x64,datafeature4_64x64,'-append');
         
         arffPatch4 = data54_64x64;

%%%%%%%% ARFF 3.Patch (64x64) %%%%%%%%

         name64_3 = 'Birlesik_IR_PB64x64_3Patch';  
         datafeature3_64x64 = ARFFvariable3;

         label_PatchAnalysis = (xlsread('label64.xlsx'));
         datafeature3_64x64(:,4096) = label_PatchAnalysis(:,1);

         dataname3_64x64arff = sprintf('%s%s',name64_3(1:end),'.arff');
         fileID3 = fopen(dataname3_64x64arff,'w');
         data13_64x64 = sprintf('%s %s','@relation', dataname3_64x64arff);
         fprintf(fileID3,'%s\n',data13_64x64);

         for tsa3 = 1:4095
             data23_64x64 = sprintf('%s %s%d %s','@attribute', 'f_',tsa3, 'numeric');    
             fprintf(fileID3,'%6s\n',data23_64x64);
         end

         data33_64x64 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID3,'%s\n',data33_64x64);

         data43_64x64 = sprintf('%s','@data');
         fprintf(fileID3,'%s\n',data43_64x64);

         data53_64x64 = sprintf('%s',dataname3_64x64arff);
         dlmwrite(data53_64x64,datafeature3_64x64,'-append');
         
         arffPatch3 = data53_64x64;

         
%%%%%%%% ARFF 2.Patch (64x64) %%%%%%%%

         name64_2 = 'Birlesik_IR_PB64x64_2Patch';
         datafeature2_64x64 = ARFFvariable2;

         label_PatchAnalysis = (xlsread('label64.xlsx'));
         datafeature2_64x64(:,4096) = label_PatchAnalysis(:,1);

         dataname2_64x64arff = sprintf('%s%s',name64_2(1:end),'.arff');
         fileID2 = fopen(dataname2_64x64arff,'w');
         data12_64x64 = sprintf('%s %s','@relation', dataname2_64x64arff);
         fprintf(fileID2,'%s\n',data12_64x64);

         for tsa2 = 1:4095
             data22_64x64 = sprintf('%s %s%d %s','@attribute', 'f_',tsa2, 'numeric');    
             fprintf(fileID2,'%6s\n',data22_64x64);
         end

         data32_64x64 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID2,'%s\n',data32_64x64);

         data42_64x64 = sprintf('%s','@data');
         fprintf(fileID2,'%s\n',data42_64x64);

         data52_64x64 = sprintf('%s',dataname2_64x64arff);
         dlmwrite(data52_64x64,datafeature2_64x64,'-append');
         
         arffPatch2 = data52_64x64;

         
%%%%%%%% ARFF 1.Patch (64x64) %%%%%%%%

         name64_1 = 'Birlesik_IR_PB64x64_1Patch';
         datafeature1_64x64 = load('Birlesik_IR_PB64x64_1Patch.mat');
         datafeature1_64x64 = datafeature1_64x64.PB1C64;
         datafeature1_64x64 = ARFFvariable1;

         label_PatchAnalysis = (xlsread('label64.xlsx'));
         datafeature1_64x64(:,4096) = label_PatchAnalysis(:,1);

         dataname1_64x64arff = sprintf('%s%s',name64_1(1:end),'.arff');
         fileID1 = fopen(dataname1_64x64arff,'w');
         data11_64x64 = sprintf('%s %s','@relation', dataname1_64x64arff);
         fprintf(fileID1,'%s\n',data11_64x64);

         for tsa1 = 1:4095
             data21_64x64 = sprintf('%s %s%d %s','@attribute', 'f_',tsa1, 'numeric');    
             fprintf(fileID1,'%6s\n',data21_64x64);
         end

         data31_64x64 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID1,'%s\n',data31_64x64);

         data41_64x64 = sprintf('%s','@data');
         fprintf(fileID1,'%s\n',data41_64x64);

         data51_64x64 = sprintf('%s',dataname1_64x64arff);
         dlmwrite(data51_64x64,datafeature1_64x64,'-append');
         
         arffPatch1 = data51_64x64;

end


