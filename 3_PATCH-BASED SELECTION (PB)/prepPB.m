function [globalYPB] = prepPB(patch,~)

         [~,~,zz]=size(patch);

%%%%%%%% IMAGE CONVERT TO 3D (IF IMAGE IS 2D) %%%%%%%%

         if zz==1
            patch=cat(3,patch,patch,patch);
         end

% %%%%%%%% RGB TO YCbCr CONVERSION FOR RGB %%%%%%%%

         patch = rgb2ycbcr(patch); % FOR RGB 
         y=double(patch(:,:,1)); % FOR RGB 

%%%%%%%% GAUSSIAN SMOOTHING TO Y COMPONENT %%%%%%%%
            
         h = fspecial('gaussian',[3 3]);
         yf = imfilter(y,h);

%%%%%%%% Y COMPONENT NORMALIZATION %%%%%%%%

         mindata = double(min(min(yf)));
         maxdata = double(max(max(yf)));
         normalised = double((double(yf) -mindata)/double((maxdata)-mindata));

%%%%%%%% DCT AND LOG(ABS(DCT)) %%%%%%%%

         J = dct2(normalised);
         JJ = log(abs(J));
 
         globalYPB = JJ;
            
end