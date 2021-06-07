
%%% read data throght step05 line1-246

%% Fig 3A  ranksum-test
%%%%%%%% V1 LH vs. RH
dataA=V1LOrdCurve'; 
dataB=V1ROrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);
%%%%%%%% V1 LH-flip vs. RH
tempdataA=fliplr(V1LOrdCurve'); 
dataA = [V1LOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V1ROrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);

%% Fig 3B one-way ANOVA
%%%%%%%% V1 LH-flip + RH = uniform distribution ?
tempdataA=fliplr(V1LOrdCurve'); 
dataA = [V1LOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V1ROrdCurve'; 
Udata = [dataA;dataB];
[sigA,tableA,stats] = anova1(Udata);
disp(sigA);

%%%%%%%% V1 shuffle = uniform distribution ?
tempdataA=fliplr(V1LshuffleOrdCurve'); 
dataA = [V1LshuffleOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V1RshuffleOrdCurve'; 
Udata = [dataA;dataB];
[sigA,tableA,stats] = anova1(Udata);
disp(sigA);

%% Fig 3D  ranksum-test
%%%%%%%% V4 LH vs. RH
dataA=V4LwholeOrdCurve'; 
dataB=V4RwholeOrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);
%%%%%%%% V4 LH-flip vs. RH
tempdataA=fliplr(V4LwholeOrdCurve');  %data from Condition A (5 variables, 16 observations)
dataA = [V4LwholeOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V4RwholeOrdCurve'; %data from Condition B (all variables have mean of 0)
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);

%% Fig 3E one-way ANOVA
%%%%%%%% V1 LH-flip + RH = uniform distribution ?
tempdataA=fliplr(V4LwholeOrdCurve'); 
dataA = [V4LwholeOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V4RwholeOrdCurve'; 
Udata = [dataA;dataB];
[sigA,tableA,stats] = anova1(Udata);
disp(sigA);

%%%%%%%% V1 shuffle = uniform distribution ?
tempdataA=fliplr(V4LshuffleOrdCurve'); 
dataA = [V4LshuffleOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V4RshuffleOrdCurve'; 
Udata = [dataA;dataB];
[sigA,tableA,stats] = anova1(Udata);
disp(sigA);

%% Figure 3G-H two-way ANOVA
%%%% V1 V1-shuffle V4 V4-shuffle
Udata = [V1para(:,1);V1para(:,2);V1shufflepara(:,1);V1shufflepara(:,2);...
    V4wholepara(:,1);V4wholepara(:,2);V4shufflepara(:,1);V4shufflepara(:,2)];
cond =  [repmat({'V1'},size(V1para,1)*2,1);repmat({'shuffle'},size(V1shufflepara,1)*2,1);...
    repmat({'V4'},size(V4wholepara,1)*2,1);repmat({'shuffle'},size(V4shufflepara,1)*2,1)];
amp = [repmat({'c'},size(V1para,1),1);repmat({'r'},size(V1para,1),1);...
    repmat({'c'},size(V1shufflepara,1),1);repmat({'r'},size(V1shufflepara,1),1);...
    repmat({'c'},size(V4wholepara,1),1);repmat({'r'},size(V4wholepara,1),1);...
    repmat({'c'},size(V4shufflepara,1),1);repmat({'r'},size(V4shufflepara,1),1)];
[sigA,tableA,stats] = anovan(Udata,{amp,cond},'model','interaction',...
    'varnames',{'amplitude','condition'});
presults = multcompare(stats,'Dimension',[1 2]);
disp(presults(:,[1,2,end]));

%% Figure 3I
%%%% V1 modulation
V1Acrindex = (V1para(:,1)+V1para(:,2))./(V1para(:,1)+V1para(:,2)+V1para(:,3));  disp(mean(V1Acrindex));
V1Acindex = (V1para(:,1))./(V1para(:,1)+V1para(:,2)+V1para(:,3));   disp(mean(V1Acindex));
V1Arindex = (V1para(:,2))./(V1para(:,1)+V1para(:,2)+V1para(:,3));   disp(mean(V1Arindex));
V1Acratio = V1Acindex./(V1Acindex+V1Arindex);   disp(mean(V1Acratio));
V1Arratio = V1Arindex./(V1Acindex+V1Arindex);   disp(mean(V1Arratio));
%%%% V4 modulation
V4Acrindex = (V4wholepara(:,1)+V4wholepara(:,2))./(V4wholepara(:,1)+V4wholepara(:,2)+V4wholepara(:,3)); disp(mean(V4Acrindex))
V4Acindex = (V4wholepara(:,1))./(V4wholepara(:,1)+V4wholepara(:,2)+V4wholepara(:,3));   disp(mean(V4Acindex))
V4Arindex = (V4wholepara(:,2))./(V4wholepara(:,1)+V4wholepara(:,2)+V4wholepara(:,3));   disp(mean(V4Arindex))
V4Acratio = V4Acindex./(V4Acindex+V4Arindex);   disp(mean(V4Acratio));
V4Arratio = V4Arindex./(V4Acindex+V4Arindex);   disp(mean(V4Arratio));
%%%% shuffle modulation
temp1 = [[V1shufflepara(:,1)+V1shufflepara(:,2)];[V4shufflepara(:,1)+V4shufflepara(:,2)]];
temp2 = [[V1shufflepara(:,1)+V1shufflepara(:,2)+V1shufflepara(:,3)];[V4shufflepara(:,1)+V4shufflepara(:,2)+V4shufflepara(:,3)]];
shuffleAcrindex = temp1./temp2;  disp(mean(V1Acrindex));
shuffleAcindex = [V1shufflepara(:,1);V4shufflepara(:,1)]./temp2;   disp(mean(shuffleAcindex));
shuffleArindex = [V1shufflepara(:,2);V4shufflepara(:,2)]./temp2;   disp(mean(shuffleArindex));

for Anipctplot = 1
    
    fig = figure('color',[1 1 1]);hold on;
    set(fig,'units','normalized','position',[0.1 0.1 0.2 0.48]);   %%%% figure size
    set(gca,'box','off');
    averagedata = [mean(V1Acindex) mean(V4Acindex) mean(shuffleAcindex),mean(V1Arindex) mean(V4Arindex) mean(shuffleArindex)]*100;
    CIdata = [std(V1Acindex)/sqrt(size(V1Acindex,1))*1.96 std(V4Acindex)/sqrt(size(V4Acindex,1))*1.96 std(shuffleAcindex)/sqrt(size(shuffleAcindex,1))*1.96,...
                std(V1Arindex)/sqrt(size(V1Acindex,1))*1.96 std(V4Arindex)/sqrt(size(V4Acindex,1))*1.96 std(shuffleArindex)/sqrt(size(shuffleAcindex,1))*1.96]*100;
    bar([1:1:6],averagedata,'facecolor',[0.5 0.5 0.5],'edgecolor','none');
    errorbar([1:1:6],averagedata,CIdata,'.','color',[0 0 0],'linewidth',2);
    ylim([0 28])
    saveas(fig,[pwd,'\Figure_Results\Fig3I_cad_rad_pct.tiff']);
    saveas(fig,[pwd,'\Figure_Results\Fig3I_cad_rad_pct.pdf']);
    fclose all; close all;
    
end

%%%% V1 shuffle V4
Udata = [V1Acindex;V1Arindex;V4Acindex;V4Arindex;shuffleAcindex;shuffleArindex];
cond =  [repmat({'V1'},size(V1Acindex,1)*2,1);repmat({'V4'},size(V4Acindex,1)*2,1);repmat({'shuffle'},size(shuffleAcindex,1)*2,1)];
amp = [repmat({'c'},size(V1Acindex,1),1);repmat({'r'},size(V1Acindex,1),1);...
    repmat({'c'},size(V4Acindex,1),1);repmat({'r'},size(V4Acindex,1),1);...
    repmat({'c'},size(shuffleAcindex,1),1);repmat({'r'},size(shuffleAcindex,1),1)];
[sigA,tableA,stats] = anovan(Udata,{amp,cond},'model','interaction',...
    'varnames',{'amplitude','condition'});
presults = multcompare(stats,'Dimension',[1 2]);
disp(presults(:,[1,2,end]));

%% Fig S7 B  ranksum-test
%%%%%%%% V2-VM LH vs. RH
dataA=V2LwholeOrdCurve'; 
dataB=V2RwholeOrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);
%%%%%%%% V1 LH-flip vs. RH
tempdataA=fliplr(V2LwholeOrdCurve'); 
dataA = [V2LwholeOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V2RwholeOrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);

%% Fig S7F  ranksum-test
%%%%%%%% V1-VM LH vs. RH
dataA=V1LVMOrdCurve'; 
dataB=V1RVMOrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);
%%%%%%%% V1 LH-flip vs. RH
tempdataA=fliplr(V1LVMOrdCurve'); 
dataA = [V1LVMOrdCurve(1,:)',tempdataA(:,1:end-1)];
dataB=V1RVMOrdCurve'; 
for j = 1:size(dataA,2)
    ps(j) = ranksum(dataA(:, j), dataB(:, j));
end
ps = fdr( ps );  %%% fdr multiple comparison
disp(ps);

%% Figure S7J
%%%% V1 V1-shuffle V4 V4-shuffle
Udata = [V1VMpara(:,1);V1VMpara(:,2);V2wholepara(:,1);V2wholepara(:,2)];
cond =  [repmat({'V1'},size(V1VMpara,1)*2,1);repmat({'V2'},size(V2wholepara,1)*2,1)];
amp = [repmat({'c'},size(V1VMpara,1),1);repmat({'r'},size(V1VMpara,1),1);...
    repmat({'c'},size(V2wholepara,1),1);repmat({'r'},size(V2wholepara,1),1)];
[sigA,tableA,stats] = anovan(Udata,{amp,cond},'model','interaction',...
    'varnames',{'amplitude','condition'});
presults = multcompare(stats,'Dimension',[1 2]);
disp(presults(:,[1,2,end]));


