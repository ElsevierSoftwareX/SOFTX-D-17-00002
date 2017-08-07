function [arffdataLBP] = arffLBP(ARFFvariable1,ARFFvariable2,ARFFvariable3,Size)
    
%%%%%%%% ARFF 64x64 %%%%%%%%

         name64 = 'Birlesik_IR_LBP64x64';
         datafeature_64x64 = ARFFvariable1;

         label = (xlsread('label.xlsx'));
         datafeature_64x64(:,4097) = label(:,1);

         dataname_64x64arff = sprintf('%s%s',name64(1:end),'.arff');
         fileID = fopen(dataname_64x64arff,'w');
         data1_64x64 = sprintf('%s %s','@relation', dataname_64x64arff);
         fprintf(fileID,'%s\n',data1_64x64);

         ysa = zeros(4096,1);
         for tsa = 1:4096
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
 
         name32 = 'Birlesik_IR_LBP32x32';
         datafeature_32x32 = ARFFvariable2;

         label = (xlsread('label.xlsx'));
         datafeature_32x32(:,1025) = label(:,1);

         dataname_32x32arff = sprintf('%s%s',name32(1:end),'.arff');
         fileID = fopen(dataname_32x32arff,'w');
         data1_32x32 = sprintf('%s %s','@relation', dataname_32x32arff);
         fprintf(fileID,'%s\n',data1_32x32);

         ysa = zeros(1024,1);
         for tsa = 1:1024
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

         name16 = 'Birlesik_IR_LBP16x16';
         datafeature_16x16 = ARFFvariable3;

         label = (xlsread('label.xlsx'));
         datafeature_16x16(:,257) = label(:,1);

         dataname_16x16arff = sprintf('%s%s',name16(1:end),'.arff');
         fileID = fopen(dataname_16x16arff,'w');
         data1_16x16 = sprintf('%s %s','@relation', dataname_16x16arff);
         fprintf(fileID,'%s\n',data1_16x16);

         ysa = zeros(256,1);
         for tsa = 1:256
             data2_16x16 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_16x16);
         end

         data3_16x16 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_16x16);

         data4_16x16 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_16x16);

         data5_16x16 = sprintf('%s',dataname_16x16arff);
         dlmwrite(data5_16x16,datafeature_16x16,'-append');

         arffdataLBP = dataname_16x16arff;

end


