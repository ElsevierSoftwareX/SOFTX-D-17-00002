function [arffdataCS] = arffCS(ARFFvariable7,ARFFvariable6,ARFFvariable5,ARFFvariable4,ARFFvariable3,ARFFvariable2,ARFFvariable1,~)

%%%%%%%% ARFF 128x128 %%%%%%%%

         name128 = 'Birlesik_IR_CSC128x128';
         datafeature_128x128 = ARFFvariable7;
         label = (xlsread('label.xlsx'));
         datafeature_128x128(:,16384) = label(:,1);

         dataname_128x128arff = sprintf('%s%s',name128(1:end),'.arff');
         fileID = fopen(dataname_128x128arff,'w');
         data1_128x128 = sprintf('%s %s','@relation', dataname_128x128arff);
         fprintf(fileID,'%s\n',data1_128x128);

         ysa = zeros(16383,1);
         for tsa = 1:16383
             data2_128x128 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_128x128);
         end
 
         data3_128x128 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_128x128);

         data4_128x128 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_128x128);

         data5_128x128 = sprintf('%s',dataname_128x128arff);
         dlmwrite(data5_128x128,datafeature_128x128,'-append');

         arffdataCS = dataname_128x128arff;
         
%%%%%%%% ARFF 64x64 %%%%%%%%

         name64 = 'Birlesik_IR_CSC64x64';
         datafeature_64x64 = ARFFvariable6;
         label = (xlsread('label.xlsx'));
         datafeature_64x64(:,4097)=label(:,1);

         dataname_64x64arff = sprintf('%s%s',name64(1:end),'.arff');
         fileID = fopen(dataname_64x64arff,'w');
         data1 = sprintf('%s %s','@relation', dataname_64x64arff);
         fprintf(fileID,'%s\n',data1);

         ysa=zeros(4096,1);
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

         name32 = 'Birlesik_IR_CSC32x32';
         datafeature_32x32 = ARFFvariable5;
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

         name16 = 'Birlesik_IR_CSC16x16';
         datafeature_16x16 = ARFFvariable4;
         label = (xlsread('label.xlsx'));
         datafeature_16x16(:,257)=label(:,1);

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
         
%%%%%%%% ARFF 8x8 %%%%%%%%

         name8 = 'Birlesik_IR_CSC8x8';
         datafeature_8x8 = ARFFvariable3;
         label = (xlsread('label.xlsx'));
         datafeature_8x8(:,65) = label(:,1);

         dataname_8x8arff = sprintf('%s%s',name8(1:end),'.arff');
         fileID = fopen(dataname_8x8arff,'w');
         data1_8x8 = sprintf('%s %s','@relation', dataname_8x8arff);
         fprintf(fileID,'%s\n',data1_8x8);

         ysa = zeros(64,1);
         for tsa = 1:64
             data2_8x8 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_8x8);
         end

         data3_8x8 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_8x8);

         data4_8x8 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_8x8);

         data5_8x8 = sprintf('%s',dataname_8x8arff);
         dlmwrite(data5_8x8,datafeature_8x8,'-append');
         
%%%%%%%% ARFF 4x4 %%%%%%%%

         name4 = 'Birlesik_IR_CSC4x4';
         datafeature_4x4 = ARFFvariable2;
         label = (xlsread('label.xlsx'));
         datafeature_4x4(:,17) = label(:,1);

         dataname_4x4arff = sprintf('%s%s',name4(1:end),'.arff');
         fileID = fopen(dataname_4x4arff,'w');
         data1_4x4 = sprintf('%s %s','@relation', dataname_4x4arff);
         fprintf(fileID,'%s\n',data1_4x4);

         ysa = zeros(16,1);
         for tsa = 1:16
             data2_4x4 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_4x4);
         end

         data3_4x4 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_4x4);

         data4_4x4 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_4x4);

         data5_4x4 = sprintf('%s',dataname_4x4arff);
         dlmwrite(data5_4x4,datafeature_4x4,'-append');

%%%%%%%% ARFF 2x2 %%%%%%%%

         name2 = 'Birlesik_IR_CSC2x2';
         datafeature_2x2 = ARFFvariable1;
         label = (xlsread('label.xlsx'));
         datafeature_2x2(:,5) = label(:,1);

         dataname_2x2arff = sprintf('%s%s',name2(1:end),'.arff');
         fileID = fopen(dataname_2x2arff,'w');
         data1_2x2 = sprintf('%s %s','@relation', dataname_2x2arff);
         fprintf(fileID,'%s\n',data1_2x2);

         ysa = zeros(4,1);
         for tsa = 1:4
             data2_2x2 = sprintf('%s %s%d %s','@attribute', 'f_',tsa, 'numeric');    
             fprintf(fileID,'%6s\n',data2_2x2);
         end

         data3_2x2 = sprintf('%s %s %s','@attribute','class','{1,0}');
         fprintf(fileID,'%s\n',data3_2x2);

         data4_2x2 = sprintf('%s','@data');
         fprintf(fileID,'%s\n',data4_2x2);

         data5_2x2 = sprintf('%s',dataname_2x2arff);
         dlmwrite(data5_2x2,datafeature_2x2,'-append');

end

