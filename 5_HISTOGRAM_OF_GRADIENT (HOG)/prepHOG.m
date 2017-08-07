function [globalYHOG] = prepHOG(veri)

         [~,~,zz] = size(veri);

%%%%%%%% IMAGE CONVERT TO 3D (IF IMAGE IS 2D) %%%%%%%%

         if zz == 1
            veri = cat(3,veri,veri,veri);
         end

%%%%%%%% YCbCr COMPONENT SELECTION %%%%%%%%

         y = veri(:,:,1);

%%%%%%%% GAUSSIAN SMOOTHING TO Y COMPONENT %%%%%%%%
            
         h = fspecial('gaussian',[3 3]);
         yf = imfilter(y,h);

%%%%%%%% Y COMPONENT NORMALIZATION %%%%%%%%

         mindata = double(min(min(yf)));
         maxdata = double(max(max(yf)));
         normalised = double((double(veri)-mindata)/double((maxdata)-mindata));

         globalYHOG = normalised;
           
end

