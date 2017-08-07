function [zigPB] = zigzagPB(globalYPB,ii)

         zig2 = globalYPB;
        
         [row, col] = size(zig2);
         zigPB = zeros(row*col,1);
         count = 1;

         for s = 1:row
            if mod(s,2) == 0
                for m = s:-1:1
                    zigPB(count) = zig2(m,s+1-m);
                    count = count+1;
                end;
            else
                for m = 1:s
                    zigPB(count) = zig2(m,s+1-m);
                    count = count+1;
                end;
            end;
         end;

         if  mod(row,2) == 0
             flip = 1;
         else
             flip = 0;
         end;

         for s = row+1:2*row-1
            if mod(flip,2) == 0
                for m = row:-1:s+1-row
                    zigPB(count) = zig2(m,s+1-m);
                    count = count+1;
                end;
            else
                for m = row:-1:s+1-row
                    zigPB(count) = zig2(s+1-m,m);
                    count = count+1;
                end;
            end;
            flip = flip+1;
         end;

         zigPB = transpose(zigPB(2:end,1));
         k = ii;

end

