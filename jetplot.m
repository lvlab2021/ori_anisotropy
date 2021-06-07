function UResquare = jetplot(Resquare)

%     colorbar = [[1:-1/63:0]',[1:-1/63:0]',repmat(1,64,1)];
    colorbar = [[1:-1/63:0]',[1:-1/63:0]',[1:-1/63:0]'];
%     colorbar = jet;
    dis = max(Resquare(:))-min(Resquare(:));
    for i = 1:size(Resquare,1)
        for j = 1:size(Resquare,2)
            temploc = round((Resquare(i,j)-min(Resquare(:)))/dis*size(colorbar,1))+1;
            if temploc>size(colorbar,1)
                temploc=size(colorbar,1);
            elseif temploc<1
                temploc=1;
            end
            UResquare(i,j,1:3) = colorbar(temploc,1:3);
        end
    end


end