function [LBP] = extractLBPFeatures(globalYLBP,ii)

         k = ii;
         directoryres = dir(strcat('IR*.bmp'));
         resAd = directoryres(k).name;

         [patchSizer, patchSizec]=size(globalYLBP);

%%%%%%%% LBP FEATURE EXTRACTION %%%%%%%

         veriY = globalYLBP;
         E = 1;
         R = 2*E + 1; 
         T = round(R/2);
         veriY = uint8(veriY);
         rm = size(veriY,1)-R+1;
         cm = size(veriY,2)-R+1;
         LBP = zeros(rm, cm);
         
         for i = 1:rm
            for j = 1:cm
                A = veriY(i:i+R-1, j:j+R-1);
                A = A+1-A(T,T);
                A(A>0) = 1;
                LBP(i,j) = A(T,R) + A(R,R)*2 + A(R,T)*4 + A(R,1)*8 + A(T,1)*16 + A(1,1)*32 + A(1,T)*64 + A(1,R)*128;
            end;
         end;

         LBP = uint8(imresize(LBP,[patchSizer patchSizec]));
         [p11,~] = size(LBP);

%%%%%%%% FEATURE SAVING %%%%%%%

         x = (LBP(1,:));   
         
         for ipt = 2:p11
             b = (LBP(ipt,:));    
             x = [x, b];  
         end
         
         filename = sprintf('%s_%s%d%s%d.mat', resAd(1:end-4),'LBPC',patchSizer,'x',patchSizec);
         save(filename,'x')

end


