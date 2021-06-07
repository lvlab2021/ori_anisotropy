
%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%% 

clear all;

%%%%%%%%%%%%%%%%%%%%%%% need to modify %%%%%%%%%%%%%%%%%%%%%%%
inN = 1;  %%%% 1 for LV1; 2 RV1;  3 for LV4; 4 RV4; 5 for LV2; 6 RV2;  
%%%%%%%%%%%%%%%%%%%%%%%  V1-L-Hemi then R-Hemi  %%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% dont need to modify %%%%%%%%%%%%%%%%%%%%%%%
nameindex = [{'LV1'},{'RV1'},{'LV4'},{'RV4'},{'LV2'},{'RV2'}];
folder = [pwd,'\',nameindex{inN},'\'];
SumcaseN = [26,22,23,15,27,24];
UsumcaseN = SumcaseN(inN);

histo = zeros(360,UsumcaseN);histbar = zeros(18,UsumcaseN);
histoRadial = zeros(360,UsumcaseN);histbarRadial = zeros(18,UsumcaseN);
for caseN = 1:UsumcaseN
    
    Mkfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_mask.ivf'];
    Mkmap = OIReadIVF(Mkfilename);Mkmap(isnan(Mkmap))=0;
    Agfilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_angle.ivf'];
    Agmap = OIReadIVF(Agfilename);Mkmap(isnan(Agmap))=0;Agmap(isnan(Agmap))=0;
    Refilename = [folder,nameindex{inN},'blankOri_vessel_midfilter__case',num2str(caseN,'%02d'),'_Retinotopic.ivf'];
    Remap = OIReadIVF(Refilename);Remap(isnan(Remap))=0;
    
    thmap =Mkmap;
    for nn = 1:size(thmap,1)
        for mm = 1:size(thmap,2)
            if thmap(nn,mm)==1 && Agmap(nn,mm)>0
                ang_temp = Agmap(nn,mm);  
                if isnan(ang_temp)==0 
                    histo(ang_temp,caseN) = histo(ang_temp,caseN)+1;        %%% 360 bins
                end
            end
        end
    end
    histbar(1,caseN) = sum([histo(1:10,caseN);histo(351:360,caseN)]);       %%% 18 bins
    for bN = 2:18
        histbar(bN,caseN) =sum(histo((bN-2)*20+11:(bN-1)*20+10,caseN));     %%% 18 bins
    end
    
    %%%%%%%%  output %%% copy to other steps 
    Percenbar(:,caseN) = histbar(:,caseN)./sum(histbar(:,caseN),1)*100;     %%% 18 bins _ pixel percentage (%)
    RadOri(caseN) = sum(sum(Remap.*Mkmap))/sum(Mkmap(:));                   %%% average radial orientation (бу)
    %%%%%%%%  output %%% copy to other steps 
    
end
