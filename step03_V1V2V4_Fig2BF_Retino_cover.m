
clear all;

%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%%    this part for all cases FigS4 %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% need to modify line 10
for allcaseplot = 1
    i = 0;
%     for inNN = 1:2   %%%% 1:2 for V1   3:4 for V4   5:6 for V2  %%%%%%%%%%%% modify this
    for inNN = 3:4   %%%% 1:2 for V1   3:4 for V4   5:6 for V2  %%%%%%%%%%%% modify this

        %%%%%%%%%%%%%%%%%%%%%%% need to modify %%%%%%%%%%%%%%%%%%%%%%%
        inN = inNN;
        i=i+1;
        %%%%%%%%%%%%%%%%%%%%%%%  V1-L-Hemi then R-Hemi  %%%%%%%%

        %%%%%%%%%%%%%%%%%%%%%%% dont need to modify %%%%%%%%%%%%%%%%%%%%%%%
        nameindex = [{'LV1'},{'RV1'},{'LV4'},{'RV4'},{'LV2'},{'RV2'}];
        folder = [pwd,'\',nameindex{inN},'\'];
        resultfolder = [pwd,'\Figure_Results\'];
        if ~exist(resultfolder)
           mkdir(resultfolder) 
        end
        SumcaseN = [26,22,23,15,27,24];
        UsumcaseN = SumcaseN(inN);
        if i==1
            UHmap=[];
            UVmap=[];
        end
        for caseN = 1:UsumcaseN

            Mkfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_mask.ivf'];
            Mkmap = OIReadIVF(Mkfilename);Mkmap(isnan(Mkmap))=0;
            Agfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_angle.ivf'];
            Agmap = OIReadIVF(Agfilename);Mkmap(isnan(Agmap))=0;Agmap(isnan(Agmap))=0;
            Refilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Retinotopic.ivf'];
            Remap = OIReadIVF(Refilename);Remap(isnan(Remap))=0;

            if rem(inN,2)==1
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            else
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = -OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            end
            Hfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Hdis.ivf'];
            Hmap = -OIReadIVF(Hfilename);Hmap(isnan(Hmap))=0;

            Uloc  = find(Mkmap>0);
            UHmap = [UHmap;Hmap(Uloc)];
            UVmap = [UVmap;Vmap(Uloc)];

        end
    end

    %%%%%%%%%%%%%%%%%%%%% load H and V dis
    Resquare = zeros(15,30);
    for i = 1:size(UHmap,1)
        yloc = abs(floor(UHmap(i)/1)); 
        xloc = floor(UVmap(i))+15;
        Resquare(yloc,xloc) =  Resquare(yloc,xloc) +1;
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OIWriteIVF(Resquare,[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.ivf']);
%     UResquare = jetplot(Resquare);
%     imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.tiff']);
    UResquare = jetplot(Resquare);
    imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.tiff']);
    logN = log(Resquare); logN(logN==-Inf)=0;
    UlogN = jetplot(logN);
    imwrite(norm_to_uint8(imresize(UlogN,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution_log.tiff']);
end

%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%%    this part for all cases FigS4 %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% need to modify line 10
for allcaseplot = 1
    i = 0;
%     for inNN = 1:2   %%%% 1:2 for V1   3:4 for V4   5:6 for V2  %%%%%%%%%%%% modify this
    for inNN = 5:6   %%%% 1:2 for V1   3:4 for V4   5:6 for V2  %%%%%%%%%%%% modify this

        %%%%%%%%%%%%%%%%%%%%%%% need to modify %%%%%%%%%%%%%%%%%%%%%%%
        inN = inNN;
        i=i+1;
        %%%%%%%%%%%%%%%%%%%%%%%  V1-L-Hemi then R-Hemi  %%%%%%%%

        %%%%%%%%%%%%%%%%%%%%%%% dont need to modify %%%%%%%%%%%%%%%%%%%%%%%
        nameindex = [{'LV1'},{'RV1'},{'LV4'},{'RV4'},{'LV2'},{'RV2'}];
        folder = [pwd,'\',nameindex{inN},'\'];
        resultfolder = [pwd,'\Figure_Results\'];
        if ~exist(resultfolder)
           mkdir(resultfolder) 
        end
        SumcaseN = [26,22,23,15,27,24];
        UsumcaseN = SumcaseN(inN);
        if i==1
            UHmap=[];
            UVmap=[];
        end
        for caseN = 1:UsumcaseN

            Mkfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_mask.ivf'];
            Mkmap = OIReadIVF(Mkfilename);Mkmap(isnan(Mkmap))=0;
            Agfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_angle.ivf'];
            Agmap = OIReadIVF(Agfilename);Mkmap(isnan(Agmap))=0;Agmap(isnan(Agmap))=0;
            Refilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Retinotopic.ivf'];
            Remap = OIReadIVF(Refilename);Remap(isnan(Remap))=0;

            if rem(inN,2)==1
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            else
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = -OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            end
            Hfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Hdis.ivf'];
            Hmap = -OIReadIVF(Hfilename);Hmap(isnan(Hmap))=0;

            Uloc  = find(Mkmap>0);
            UHmap = [UHmap;Hmap(Uloc)];
            UVmap = [UVmap;Vmap(Uloc)];

        end
    end

    %%%%%%%%%%%%%%%%%%%%% load H and V dis
    Resquare = zeros(15,30);
    for i = 1:size(UHmap,1)
        yloc = abs(floor(UHmap(i)/1)); 
        xloc = floor(UVmap(i))+15;
        Resquare(yloc,xloc) =  Resquare(yloc,xloc) +1;
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OIWriteIVF(Resquare,[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.ivf']);
%     UResquare = jetplot(Resquare);
%     imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.tiff']);
    UResquare = jetplot(Resquare);
    imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.tiff']);
    logN = log(Resquare); logN(logN==-Inf)=0;
    UlogN = jetplot(logN);
    imwrite(norm_to_uint8(imresize(UlogN,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution_log.tiff']);
end

%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%%    this part for all cases FigS4 V1-VM %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% need to modify line 10
for allcaseplot = 1
    i = 0;
%     for inNN = 1:2   %%%% 1:2 for V1   3:4 for V4   5:6 for V2  %%%%%%%%%%%% modify this
    for inNN = 1:2   %%%% 1:2 for V1   3:4 for V4   5:6 for V2  %%%%%%%%%%%% modify this

        %%%%%%%%%%%%%%%%%%%%%%% need to modify %%%%%%%%%%%%%%%%%%%%%%%
        inN = inNN;
        i=i+1;
        %%%%%%%%%%%%%%%%%%%%%%%  V1-L-Hemi then R-Hemi  %%%%%%%%

        %%%%%%%%%%%%%%%%%%%%%%% dont need to modify %%%%%%%%%%%%%%%%%%%%%%%
        nameindex = [{'LV1'},{'RV1'},{'LV4'},{'RV4'},{'LV2'},{'RV2'}];
        folder = [pwd,'\',nameindex{inN},'\'];
        resultfolder = [pwd,'\Figure_Results\'];
        if ~exist(resultfolder)
           mkdir(resultfolder) 
        end
        SumcaseN = [26,22,23,15,27,24];
        UsumcaseN = SumcaseN(inN);
        if i==1
            UHmap=[];
            UVmap=[];
        end
        for caseN = 1:UsumcaseN

            Mkfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_mask.ivf'];
            Mkmap = OIReadIVF(Mkfilename);Mkmap(isnan(Mkmap))=0;
            Agfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_angle.ivf'];
            Agmap = OIReadIVF(Agfilename);Mkmap(isnan(Agmap))=0;Agmap(isnan(Agmap))=0;
            Refilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Retinotopic.ivf'];
            Remap = OIReadIVF(Refilename);Remap(isnan(Remap))=0;
%             Mkmap(Remap>120 | Remap<60)=0;

                pixelN = 150;
                [yy xx] = find(Mkmap>0);
                yymin = min(yy(:));
                Mkmap(yymin+pixelN:end,:) = 0;
            
            if rem(inN,2)==1
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            else
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = -OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            end
            Hfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Hdis.ivf'];
            Hmap = -OIReadIVF(Hfilename);Hmap(isnan(Hmap))=0;

            Uloc  = find(Mkmap>0);
            UHmap = [UHmap;Hmap(Uloc)];
            UVmap = [UVmap;Vmap(Uloc)];

        end
    end

    %%%%%%%%%%%%%%%%%%%%% load H and V dis
    Resquare = zeros(15,30);
    for i = 1:size(UHmap,1)
        yloc = abs(floor(UHmap(i)/1)); 
        xloc = floor(UVmap(i))+15;
        Resquare(yloc,xloc) =  Resquare(yloc,xloc) +1;
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OIWriteIVF(Resquare,[resultfolder,nameindex{inNN}(2:end),'_VM_Figure_distribution.ivf']);
%     UResquare = jetplot(Resquare);
%     imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_Figure_distribution.tiff']);
    UResquare = jetplot(Resquare);
    imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_VM_Figure_distribution.tiff']);
    logN = log(Resquare); logN(logN==-Inf)=0;
    UlogN = jetplot(logN);
    imwrite(norm_to_uint8(imresize(UlogN,100,'nearest')),[resultfolder,nameindex{inNN}(2:end),'_VM_Figure_distribution_log.tiff']);
end

%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%%    this part for Fig2B         %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% do not modify
for Fig2B = 1
    i = 0;
    for inNN = 2  %%%%%% diff with allcaseplot

        inN = inNN;
        i=i+1;
        nameindex = [{'LV1'},{'RV1'},{'LV4'},{'RV4'},{'LV2'},{'RV2'}];
        folder = [pwd,'\',nameindex{inN},'\'];
        resultfolder = [pwd,'\Figure_Results\'];
        if ~exist(resultfolder)
           mkdir(resultfolder) 
        end
        SumcaseN = [26,22,23,15,27,24];
        UsumcaseN = SumcaseN(inN);
        if i==1
            UHmap=[];
            UVmap=[];
        end
        
        for caseN = 5  %%%%%% diff with allcaseplot

            Mkfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_mask.ivf'];
            Mkmap = OIReadIVF(Mkfilename);Mkmap(isnan(Mkmap))=0;
            Agfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_angle.ivf'];
            Agmap = OIReadIVF(Agfilename);Mkmap(isnan(Agmap))=0;Agmap(isnan(Agmap))=0;
            Refilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Retinotopic.ivf'];
            Remap = OIReadIVF(Refilename);Remap(isnan(Remap))=0;

            if rem(inN,2)==1
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            else
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = -OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            end
            Hfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Hdis.ivf'];
            Hmap = -OIReadIVF(Hfilename);Hmap(isnan(Hmap))=0;

            Uloc  = find(Mkmap>0);
            UHmap = [UHmap;Hmap(Uloc)];
            UVmap = [UVmap;Vmap(Uloc)];

        end
    end

    %%%%%%%%%%%%%%%%%%%%% load H and V dis
    Resquare = zeros(15,30);
    for i = 1:size(UHmap,1)
        yloc = abs(floor(UHmap(i)/1)); 
        xloc = floor(UVmap(i))+15;
        Resquare(yloc,xloc) =  Resquare(yloc,xloc) +1;
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OIWriteIVF(Resquare,[resultfolder,'Fig2B_Figure_distribution.ivf']);
    UResquare = jetplot(Resquare);
    imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,'Fig2B_Figure_distribution_Fig2B.tiff']);
    logN = log(Resquare); logN(logN==-Inf)=0;
    UlogN = jetplot(logN);
    imwrite(norm_to_uint8(imresize(UlogN,100,'nearest')),[resultfolder,'Fig2B_Figure_distribution_log.tiff']);
end

%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%%    this part for Fig2F         %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%% %%%%%%%%%  %%%%%%%%%% %%%%%%%%% 
%%%%%%%%%% do not modify
for Fig2F = 1
    i = 0;
    for inNN = 4  %%%%%% diff with allcaseplot

        inN = inNN;
        i=i+1;
        nameindex = [{'LV1'},{'RV1'},{'LV4'},{'RV4'},{'LV2'},{'RV2'}];
        folder = [pwd,'\',nameindex{inN},'\'];
        resultfolder = [pwd,'\Figure_Results\'];
        if ~exist(resultfolder)
           mkdir(resultfolder) 
        end
        SumcaseN = [26,22,23,15,27,24];
        UsumcaseN = SumcaseN(inN);
        if i==1
            UHmap=[];
            UVmap=[];
        end
        
        for caseN = 1  %%%%%% diff with allcaseplot

            Mkfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_mask.ivf'];
            Mkmap = OIReadIVF(Mkfilename);Mkmap(isnan(Mkmap))=0;
            Agfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_angle.ivf'];
            Agmap = OIReadIVF(Agfilename);Mkmap(isnan(Agmap))=0;Agmap(isnan(Agmap))=0;
            Refilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Retinotopic.ivf'];
            Remap = OIReadIVF(Refilename);Remap(isnan(Remap))=0;

            if rem(inN,2)==1
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            else
                Vfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Vdis.ivf'];
                Vmap = -OIReadIVF(Vfilename);Vmap(isnan(Vmap))=0;
            end
            Hfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Hdis.ivf'];
            Hmap = -OIReadIVF(Hfilename);Hmap(isnan(Hmap))=0;

            Uloc  = find(Mkmap>0);
            UHmap = [UHmap;Hmap(Uloc)];
            UVmap = [UVmap;Vmap(Uloc)];

        end
    end

    %%%%%%%%%%%%%%%%%%%%% load H and V dis
    Resquare = zeros(15,30);
    for i = 1:size(UHmap,1)
        yloc = abs(floor(UHmap(i)/1)); 
        xloc = floor(UVmap(i))+15;
        Resquare(yloc,xloc) =  Resquare(yloc,xloc) +1;
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    OIWriteIVF(Resquare,[resultfolder,'Fig2F_Figure_distribution.ivf']);
    UResquare = jetplot(Resquare);
    imwrite(norm_to_uint8(imresize(UResquare,100,'nearest')),[resultfolder,'Fig2F_Figure_distribution_Fig2B.tiff']);
    logN = log(Resquare); logN(logN==-Inf)=0;
    UlogN = jetplot(logN);
    imwrite(norm_to_uint8(imresize(UlogN,100,'nearest')),[resultfolder,'Fig2F_Figure_distribution_log.tiff']);
end




% colorbar = [[1:-1/63:0]',[1:-1/63:0]',repmat(1,64,1)];
colorbar = [[1:-1/63:0]',[1:-1/63:0]',[1:-1/63:0]'];
Ubar=[];
Ubar(:,:,1) = colorbar(:,1);
Ubar(:,:,2) = colorbar(:,2);
Ubar(:,:,3) = colorbar(:,3);
Ubar = repmat(Ubar,1,10);
imwrite(norm_to_uint8(Ubar),[resultfolder,'bar.tiff']);

