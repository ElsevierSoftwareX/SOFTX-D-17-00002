function [zigCS] = zigzagCS(globalYCS,ii)

    zig1=globalYCS;    
    [row, col]=size(zig1);
    zigCS=zeros(row*col,1);
    count=1;

    for s=1:row
        if mod(s,2)==0
            for m=s:-1:1
                zigCS(count)=zig1(m,s+1-m);
                count=count+1;
            end;
        else
            for m=1:s
                zigCS(count)=zig1(m,s+1-m);
                count=count+1;
            end;
        end;
    end;

    if mod(row,2)==0
        flip=1;
    else
        flip=0;
    end;

    for s=row+1:2*row-1
        if mod(flip,2)==0
            for m=row:-1:s+1-row
                zigCS(count)=zig1(m,s+1-m);
                count=count+1;
            end;
        else
            for m=row:-1:s+1-row
                zigCS(count)=zig1(s+1-m,m);
                count=count+1;
            end;
        end;
        flip=flip+1;
    end;

    zigCS=transpose(zigCS(2:end,1));
    k=ii;

end

