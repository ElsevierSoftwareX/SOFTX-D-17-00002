function [arffdataHOG] = arffHOG(ARFFvariable1,ARFFvariable2,ARFFvariable3,~)
    
%%%%%%%% ARFF 64x64 %%%%%%%%

         name64 = 'Birlesik_IR_HOG64x64';
         datafeature_64x64 = ARFFvariable1;

         label = (xlsread('label.xlsx'));
         datafeature_64x64(:,1765) = label(:,1);

         dataname_64x64arff = sprintf('%s%s',name64(1:end),'.arff');
         fileID = fopen(dataname_64x64arff,'w');
         data1_64x64 = sprintf('%s %s','@relation', dataname_64x64arff);
         fprintf(fileID,'%s\n',data1_64x64);

         ysa = zeros(1764,1);
         for tsa = 1:1764
             data2_64x64 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_64x64);
         end

         data3_64x64 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_64x64);

         data4_64x64 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_64x64);

         data5_64x64 = sprintf('%s',dataname_64x64arff);
         dlmwrite(data5_64x64,datafeature_64x64,'-append');

%%%%%%%% ARFF 32x32 %%%%%%%%

         name32 = 'Birlesik_IR_HOG32x32';
         datafeature_32x32 = ARFFvariable2;

         label = (xlsread('label.xlsx'));
         datafeature_32x32(:,325) = label(:,1);

         dataname_32x32arff = sprintf('%s%s',name32(1:end),'.arff');
         fileID = fopen(dataname_32x32arff,'w');
         data1_32x32 = sprintf('%s %s','@relation', dataname_32x32arff);
         fprintf(fileID,'%s\n',data1_32x32);

         ysa = zeros(324,1);
         for tsa = 1:324
             data2_32x32 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_32x32);
         end

         data3_32x32 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_32x32);

         data4_32x32 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_32x32);

         data5_32x32 = sprintf('%s',dataname_32x32arff);
         dlmwrite(data5_32x32,datafeature_32x32,'-append');

%%%%%%%% ARFF 16x16 %%%%%%%%

         name16 = 'Birlesik_IR_HOG16x16';
         datafeature_16x16 = ARFFvariable3;

         label = (xlsread('label.xlsx'));
         datafeature_16x16(:,37) = label(:,1);

         dataname_16x16arff = sprintf('%s%s',name16(1:end),'.arff');
         fileID = fopen(dataname_16x16arff,'w');
         data1_16x16 = sprintf('%s %s','@relation', dataname_16x16arff);
         fprintf(fileID,'%s\n',data1_16x16);

         ysa = zeros(36,1);
         for tsa = 1:36
             data2_16x16 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_16x16);
         end

         data3_16x16 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_16x16);

         data4_16x16 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_16x16);

         data5_16x16 = sprintf('%s',dataname_16x16arff);
         dlmwrite(data5_16x16,datafeature_16x16,'-append');

         arffdataHOG = dataname_16x16arff;

end


