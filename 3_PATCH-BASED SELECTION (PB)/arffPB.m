function [arffdataPB] = arffPB(ARFFvariable1,~)
    
%%%%%%%% ARFF 64x64 %%%%%%%%

         name64 = 'Birlesik_IR_PB64x64';
         datafeature_64x64 = ARFFvariable1;

         label64 = (xlsread('label_concat_64x64.xlsx'));
         datafeature_64x64(:,4096) = label64(:,1);

         dataname_64x64arff = sprintf('%s%s',name64(1:end),'.arff');
         fileID = fopen(dataname_64x64arff,'w');
         data1_64x64 = sprintf('%s %s','@relation', dataname_64x64arff);
         fprintf(fileID,'%s\n',data1_64x64);

         for tsa = 1:4095
             data2_64x64 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_64x64);
         end

         data3_64x64 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_64x64);

         data4_64x64 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_64x64);

         data5_64x64 = sprintf('%s',dataname_64x64arff);
         dlmwrite(data5_64x64,datafeature_64x64,'-append');
         
         arffdataPB = datafeature_64x64;

%%%%%%%% ARFF 32x32 %%%%%%%%

         name32 = 'Birlesik_IR_PB32x32';
         datafeature_32x32 = ARFFvariable2;

         label32 = (xlsread('label32.xlsx'));
         datafeature_32x32(:,1024) = label32(:,1);

         dataname_32x32arff = sprintf('%s%s',name32(1:end),'.arff');
         fileID = fopen(dataname_32x32arff,'w');
         data1_32x32 = sprintf('%s %s','@relation', dataname_32x32arff);
         fprintf(fileID,'%s\n',data1_32x32);

         for tsa = 1:1023
             data2_32x32 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_32x32);
         end

         data3_32x32 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_32x32);

         data4_32x32 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_32x32);

         data5_32x32 = sprintf('%s',dataname_32x32arff);
         dlmwrite(data5_32x32,datafeature_32x32,'-append');
         arffdataPB = dataname_32x32;


%%%%%%%% ARFF 16x16 %%%%%%%%

         name16 = 'Birlesik_IR_PB16x16';
         datafeature_16x16 = ARFFvariable3;

         label16 = (xlsread('label16.xlsx'));
         datafeature_16x16(:,256) = label16(:,1);

         dataname_16x16arff = sprintf('%s%s',name16(1:end),'.arff');
         fileID = fopen(dataname_16x16arff,'w');
         data1_16x16 = sprintf('%s %s','@relation', dataname_16x16arff);
         fprintf(fileID,'%s\n',data1_16x16);

         for tsa = 1:255
             data2_16x16 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_16x16);
         end

         data3_16x16 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_16x16);

         data4_16x16 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_16x16);

         data5_16x16 = sprintf('%s',dataname_16x16arff);
         dlmwrite(data5_16x16,datafeature_16x16,'-append');

         arffdataPB = dataname_16x16;
         
end


