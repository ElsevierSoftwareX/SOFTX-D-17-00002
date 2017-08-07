function [temps] = patchNumber(k)

            kk = num2str(k);
    
            if length(kk)>=4
               k1=num2str(k);
               temps = [ '', k1 ];
            end

            if length(kk) == 3
               k2=num2str(k);
               temps = [ '0', k2 ];
            end

            if length(kk) == 2
               k3=num2str(k);
               temps = [ '00', k3 ];
            end

            if length(kk) == 1
               k4=num2str(k);
               temps = [ '000', k4 ];
            end

end

