function [globalYCS] = prepCS(veri)

         [~,~,zz]=size(veri);
        
%%%%%%%% IMAGE CONVERT TO 3D (IF IMAGE IS 2D) %%%%%%%%
    
         if zz==1
            veri=cat(3,veri,veri,veri);
         end
    
         %%RGB TO YCbCr CONVERSION%%

         veri = rgb2ycbcr(veri);
    
%%%%%%%% YCbCr COMPONENT SELECTION %%%%%%%%
        
         y=veri(:,:,1);
    
%%%%%%%% GAUSSIAN SMOOTHING TO Y COMPONENT %%%%%%%%
    
         h = fspecial('gaussian',[3 3]);
         yf=imfilter(y,h);
    
%%%%%%%% Y COMPONENT NORMALIZATION %%%%%%%%
    
         mindata = double(min(min(yf)));
         maxdata = double(max(max(yf)));
         normalised = double((double(yf)-mindata)/double((maxdata)-mindata));
        
%%%%%%%% DCT AND LOG(ABS(DCT)) %%%%%%%%
    
         J= dct2(normalised);
         JJ=log(abs(J));

         globalYCS = JJ;
    
end

