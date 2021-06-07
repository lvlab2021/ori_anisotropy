
clear all;

%%  RV1 single case No.05
%%%%%%%%%% 18 bins pixel percentage curve  %%% generate in step01
OrdCurve = [5.77072310405644,5.09539874294833,5.13851961040929,5.22416702712911,6.22980483391495,5.77170473905636,6.15560442104045,5.73521068647171,5.46327397659473,5.57380357162876,6.78881592882864,6.03404068276721,5.38179499442053,5.64572062699404,5.89018246760905,5.21866960676222,5.27027027027027,5.30508154398338,5.58500876799478,5.69559263579652,5.23149167216964,5.49521872701311;5.72310405643739,4.83222979688397,5.30245629503093,4.96889869075977,5.72444099780277,5.69173533604534,5.87639604189572,5.31486925576358,5.27692142517523,5.48187841216103,6.02361787756831,5.72635588874509,4.93065518890483,5.50700513247330,5.55827001162536,4.53877251010658,5.30487804878049,5.26415213147787,5.38925818686024,5.11741137089821,5.10308900139409,5.22262126260223;5.40035273368607,4.89522236376108,5.01453388254419,5.02190190141403,5.41682822799535,5.30463706639778,5.01273074474857,5.16401052142968,4.98397214681207,5.27000212997321,5.16045329379369,5.69949451783839,4.99920293320580,5.59419772902919,5.05618924064495,4.81096104373392,5.05273566249176,5.08154398337636,4.93862403654011,4.83339250393062,4.78758529605987,5.60339232400156;5.32980599647266,5.53494687626860,5.14127484880629,5.42825984976331,5.52281245960967,5.49123234009017,5.15739829870957,5.96085409252669,5.38888633261246,5.46057868008924,5.10352679517052,5.66042343288320,5.56671449067432,5.54267483106434,5.03260155341769,5.14401874310915,5.27356624917601,4.99496253384548,5.03853839566086,4.76745955267029,5.52865213882163,6.30435723248669;5.47089947089947,6.35944958494898,5.63446252186971,6.01677825771745,5.95256559389944,5.49123234009017,5.49302702389908,5.62819124245706,5.93337321124557,5.91347824624732,5.40272188095742,5.99008571219262,6.07364897178384,5.69724352495888,5.23309689484946,5.57354832782066,5.73994726433751,5.71752408538505,5.91941601076628,5.57387026423898,6.15232225401717,5.97118255376228;5.74250440917108,5.90310343379481,5.72814062736778,6.44872396293431,6.26987204342769,5.63958137755989,5.73028181239512,5.37676001856723,5.98015306983236,5.74195935114290,5.74825248887948,5.91194354228224,5.91264147935597,5.73489487347165,5.13706131113844,5.93646637265711,5.80421885299934,5.87022227819407,6.33538599567717,6.40563980321550,7.12451390417492,6.57262775301804;6.20987654320988,5.63993448773045,5.53802917797462,6.23792958493003,6.00297272844772,5.95714103589351,5.50894045483479,5.39996905461860,5.45867267902882,5.41685817741556,5.34314763821224,5.97543405533442,5.77873425793081,5.85181221885342,5.11515845871312,6.27411797133407,6.02340145023072,6.06070146716202,6.15390889441703,6.88238575848253,6.86770856262382,6.78464800311540;6.39682539682540,5.65113316628638,5.54629489316563,6.20442180807964,5.84916634354401,6.25152115712249,5.89664949945026,5.20398163907370,5.33367076182150,5.46057868008924,5.64631434018216,5.87287245732705,5.78989319304958,5.67544537581991,5.41674388826176,6.69790518191841,6.21127224785761,6.03393992821611,5.98670527303128,6.41578333417863,6.30273681121139,6.21781835489594;5.43209876543210,6.00809104525666,6.11249638374960,6.57117965651483,5.80134419025462,6.47288573647184,6.07603726636190,5.04925473206457,5.68643690854154,6.23073215026400,6.34664266045330,5.78984640179727,5.85206440299697,5.43170243544775,6.25242195002780,7.22046122748989,6.30026367831246,6.32044581575468,6.55560539945353,6.21798448039763,5.53965808203096,5.80243174246030;5.36684303350970,6.16487254503969,6.85503313174172,6.76065090379613,5.97712291585886,6.52735764866776,6.44204617788323,5.16272113053793,6.36129388487554,6.78788829972086,6.54522346960390,5.68484286098020,5.76119878845847,5.65761052652438,6.51020167472579,7.30085446527012,6.07943309162821,6.19923178641144,6.55764446800702,6.30927625906578,5.83314990094651,5.56877677296525;5.11816578483245,5.76731945630416,6.45414594497789,6.12461237594507,5.73607341346775,6.27701864793760,5.53498061454777,5.36257671875806,5.92186996733079,6.18028541640976,5.88990679940691,5.28192229737980,5.75641638769329,5.53474823137745,6.42764476943036,6.01226571113561,5.88497033618985,6.11737296140042,5.95611924472901,5.63473145001775,5.83681854868296,5.48223789537450;5.07054673721340,5.18358833657628,5.70747633939027,5.20832698716348,5.16026883805092,5.23509845508385,4.97077715409988,5.82159987621848,5.39195386432307,5.38322702151273,5.00423639059521,5.05970550169715,5.39614219671608,5.57239957989022,5.96263036409280,4.97404446894524,5.46143704680290,5.48768969208488,5.03446025855389,5.29999492823452,4.84261501210654,5.43464151269958;5.23456790123457,4.99041113148649,5.03795340891871,4.94331093389220,4.67429236138038,4.83061553260781,4.47312076847405,6.01114033730466,5.27232012760932,5.14892996872302,4.64414319000212,4.96935361773827,5.31484138370796,5.61797752808989,5.60544538607990,4.75124035281147,5.21588661832564,5.25313267426485,5.11194486358631,4.91961251711721,4.92332526230831,5.40435290554282;5.47089947089947,5.16819015356188,4.75967433082148,4.85923687561304,4.61096032053768,4.61968174495555,4.75956252531682,5.81902109443499,5.50161812297735,5.16126139255406,4.86522982418979,5.07191521574565,5.42643073489558,5.45350058458673,5.46897376712213,4.63524439544285,5.80751483190508,4.94616208047352,5.07116349251662,4.58994776081554,5.30853327463497,4.93704296655272;5.38271604938272,5.58534092977029,5.07377150807974,4.87568614788505,4.81452759467494,5.00214410718218,5.27747236849719,5.49151580793233,5.65882912314606,5.23861305113057,4.89170726540987,5.21354789870821,5.62729156703332,5.39999603670016,5.17918218118714,4.61457184858508,5.61140408701384,4.89893583527486,5.06912442396313,4.90439722067252,4.94166850099054,4.56925273679200;5.62786596119929,5.88770525078041,5.74053920015429,4.89944620783351,5.05105337986300,5.14353928352051,5.56102077426075,5.76357728609005,5.62431939140171,5.09175700368822,4.89303113747087,5.03040218798076,5.37541846006695,5.37621623763946,5.21624854682998,4.95107497243660,4.95880026367831,5.51287702285750,5.00387423025162,5.28985139727139,5.51397754787585,4.50434857859894;5.79541446208113,5.78271763931856,5.73365110416179,5.02921268909048,5.39485588729482,5.04039034340484,5.86482263757884,5.76099850430657,5.24777987392445,5.20273981816755,5.39477864859140,5.30389978266709,5.58743822732345,5.32667498959634,5.26679359088841,5.62867511944138,4.97033618984839,5.47194761035199,5.05892908119571,5.71587969772278,5.05539658082031,4.51732941023755;5.45679012345679,5.55034505928300,5.48154679083608,5.17725613953857,5.81103786997544,5.25248310791234,6.20913141600602,5.97374800144412,5.51465513274744,5.25542862908198,6.30825037068418,5.72391394593539,5.46947234178224,5.38017953748291,5.67115394335585,5.71710768099963,5.02966381015161,5.46407656948555,5.23428897679540,5.42678906527362,5.10675764913053,5.60771926788110];
L55V1bin18 =OrdCurve(:,5)';     %%% Fig2A-D is case No.5
%%%%%%%
%%%%%%% radial orientation  %%% generate in step01
RaOri = [60.7805039738264,62.1657108204518,70.0798614481037,51.5440360831934,51.3943079867949,67.3283439614036,64.8629286212368,67.8247353208828,51.0332097778726,54.6029049132986,61.1114030323451,52.3247586676223,49.3097981267163,57.0136947557376,51.5031340422491,55.6686041829385,49.9237092027872,60.4289895433539,75.2551550445333,66.9176123945516,69.4370480444419,67.5729552640325];
RaOri = RaOri(5);               %%% Fig2A-D is case No.5
%%%%%%%

i=1;
for combfit = 1
    
    para = [];w1=[];w2=[];w=[];
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    amp1 = mean(meandata([1 2 9 10 11])) - mean(meandata([4 5 14 15]));
    amp2 = max(meandata(4:16))-min(meandata(4:16));
    radialloc = RaOri(i)/10+1;
    yfit0 = min(meandata);
    warning('off')    
    opts = statset('FunValCheck','off','MaxIter',10000,'TolFun',1e-10);
    xfit = [0:20:360-20];
    yfit = meandata';
    
    func0 = [amp1/(60./180*pi);60./180*pi;amp2/(60./180*pi);120./180*pi;yfit0] ;  %%%%%amplitude  half-width   prefer-ori  baseline
    fun = @(beta,x) abs(beta(1)).*exp(abs(beta(2)).*cos(x./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((x-180)./180*pi))+abs(beta(3)).*exp(abs(beta(4)).*cos((x-(RaOri(i))*2)./180*pi))+abs(beta(5));
    Umodel = fitnlm(xfit,yfit,fun,func0,'Options',opts);
    beta = table2array(Umodel.Coefficients(:,1));
    xx =[0:360-1]; %
    yy =abs(beta(1)).*exp(abs(beta(2)).*cos(xx./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((xx-180)./180*pi))+abs(beta(3)).*exp(abs(beta(4)).*cos((xx-(RaOri(i))*2)./180*pi))+abs(beta(5));
    yy1 =abs(beta(1)).*exp(abs(beta(2)).*cos(xx./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((xx-180)./180*pi));
    yy1 = yy1-min(yy1(:));
    w(i,1) = (max(yy1)-min(yy1));
    yy2 =abs(beta(3)).*exp(abs(beta(4)).*cos((xx-(RaOri(i))*2)./180*pi));
    yy2 = yy2-min(yy2(:));
    w(i,2) = (max(yy2)-min(yy2));
    temppeak = find(abs(yy2)==max(abs(yy2)));
    yyn = find((abs(temppeak)-RaOri(i)*2)==min((abs(temppeak)-RaOri(i)*2)));
    peak(i,1) = temppeak(yyn(1));
    para(i,[1 2]) = w(i,[1 2]);                     %%% Ac and Ar
    para(i,3) = mean(yy-yy1-yy2);                   %%% A0
    para(i,4) = peak(i,1) ;                         %%% radial orientation
    para(i,5) = Umodel.Rsquared.Adjusted ;          %%% adjusted R2
    para(i,6) = Umodel.LogLikelihood ;              %%% LogLikelihood
    para(i,7) = Umodel.DFE ;                        %%% df
    para(i,8) = Umodel.ModelCriterion.AIC ;         %%% AIC
    para(i,9) = Umodel.ModelCriterion.AICc ;        %%% AICc
    para(i,10) = Umodel.ModelCriterion.BIC ;        %%% BIC
    parac = para;
    yyc = yy;
    yycard = yy1;
    yyrad = yy2;
    
end;  parac;         %%%combined model fitting
for cardfit = 1
    
    para = [];w1=[];w2=[];w=[];
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    amp1 = mean(meandata([1 2 9 10 11])) - mean(meandata([4 5 14 15]));
    amp2 = max(meandata(4:16))-min(meandata(4:16));
    radialloc = RaOri(i)/10+1;
    yfit0 = min(meandata);
    warning('off')    
    opts = statset('FunValCheck','off','MaxIter',10000,'TolFun',1e-10);
    xfit = [0:20:360-20];
    yfit = meandata';

    func0 = [amp1/(60./180*pi);60./180*pi;yfit0] ;  %%%%%amplitude  half-width   prefer-ori  baseline
    fun = @(beta,x) abs(beta(1)).*exp(abs(beta(2)).*cos(x./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((x-180)./180*pi))+abs(beta(3));
    Umodel2p = fitnlm(xfit,yfit,fun,func0,'Options',opts);
    beta2p = table2array(Umodel2p.Coefficients(:,1));
    yy2p =abs(beta2p(1)).*exp(abs(beta2p(2)).*cos(xx./180*pi))+abs(beta2p(1)).*exp(abs(beta2p(2)).*cos((xx-180)./180*pi)); 
    yy2p2 =abs(beta2p(1)).*exp(abs(beta2p(2)).*cos(xx./180*pi))+abs(beta2p(1)).*exp(abs(beta2p(2)).*cos((xx-180)./180*pi))+abs(beta2p(3)); 
    yy2p = yy2p-min(yy2p(:));
    para2p(i,[1]) = max(yy2p(:))-min(yy2p(:));                      %%% Ac
    para2p(i,3) = abs(beta2p(3))+min(yy2p(:));                      %%% A0
    para2p(i,5) = Umodel2p.Rsquared.Adjusted ;                      %%% adjusted R2
    para2p(i,6) = Umodel2p.LogLikelihood ;                          %%% LogLikelihood
    para2p(i,7) = Umodel2p.DFE ;                                    %%% df
    para2p(i,8) = Umodel2p.ModelCriterion.AIC ;                     %%% AIC
    para2p(i,9) = Umodel2p.ModelCriterion.AICc ;                    %%% AICc
    para2p(i,10) = Umodel2p.ModelCriterion.BIC ;                    %%% BIC
    paraa = para2p;yya = yy2p2;
        
end;  paraa;         %%%cardinal model fitting
for radfit = 1
    
    para = [];w1=[];w2=[];w=[];
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    amp1 = meandata(1) - mean(meandata([4 5 14 15]));
    amp2 = max(meandata(4:16))-meandata(1);
    radialloc = find(meandata == max(meandata(4:16)));
    yfit0 = min(meandata);
    warning('off')    
    opts = statset('nlinfit');
    opts.FunValCheck = 'off';
    xfit = [0:20:360-20];
    yfit = meandata;
    
    func0 = [amp2/(60./180*pi);120./180*pi;yfit0] ;  %%%%%amplitude  half-width   prefer-dir  baseline
    fun = @(beta,x) abs(beta(1)).*exp(abs(beta(2)).*cos((x-(RaOri(i))*2)./180*pi))+abs(beta(3));
    Umodel1p = fitnlm(xfit,yfit,fun,func0,'Options',opts);
    beta1p = table2array(Umodel1p.Coefficients(:,1));
    yy1p =abs(beta1p(1)).*exp(abs(beta1p(2)).*cos((xx-(RaOri(i))*2)./180*pi));
    yy1p2 =abs(beta1p(1)).*exp(abs(beta1p(2)).*cos((xx-(RaOri(i))*2)./180*pi))+abs(beta1p(3));
    yy1p = yy1p-min(yy1p(:));
    temppeak = find(yy1p==max(yy1p(:)));
    yyn = find((abs(temppeak)-RaOri(i)*2)==min((abs(temppeak)-RaOri(i)*2)));
    para1p(i,[2]) = max(yy1p(:))-min(yy1p(:));                      %%% Ar
    para1p(i,3) = abs(beta1p(3))+min(yy1p(:));                      %%% A0
    para1p(i,4) =  temppeak(yyn);                                   %%% radial orientation
    para1p(i,5) = Umodel1p.Rsquared.Adjusted ;                      %%% adjusted R2
    para1p(i,6) = Umodel1p.LogLikelihood ;                          %%% LogLikelihood
    para1p(i,7) = Umodel1p.DFE ;                                    %%% df
    para1p(i,8) = Umodel1p.ModelCriterion.AIC ;                     %%% AIC
    para1p(i,9) = Umodel1p.ModelCriterion.AICc ;                    %%% AICc
    para1p(i,10) = Umodel1p.ModelCriterion.BIC ;                    %%% BIC
    parab = para1p; yyb = yy1p2;
    
end;  parab;         %%%radial model fitting

resultfolder = [pwd,'\Figure_Results\'];
if ~exist(resultfolder)
   mkdir(resultfolder) 
end

for V1casecardfit = 1
    
    colora = [200 20 20]/255;
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    fig = figure('color',[1 1 1]);
    set(fig,'units','normalized','position',[0.1 0.1 0.4 0.25*1.3]);
    hold on;
    
    plottype = [{'o'}];
    g = plot(ones(size(tempdata,2)+1,1)*(100/size(tempdata,2)),'--');hold on;
    set(g,'color',[0.5 0.5 0.5],'LineWidth',2);
    h(1) = plot([meandata,meandata(1)],plottype{1});hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([meandata,meandata(1)],'--');hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([20:1:360+20]/20,[yya,yya(1)],'-');hold on;
    set(h(1),'color',colora,'LineWidth',3.5);
    set(gca,'box','off');
    xlim([0.5,19.6]);
    ylim([3.1,9.5]);
    set(gca,'XTick',[1:4.5:50],'Xticklabel',{''},'fontsize',27);
    set(gca,'Yticklabel',num2str(get(gca,'YTick')','%.1f'))
    set(gca,'linewidth',1.5);
    saveas(fig,[resultfolder,'Fig2D_V1_cardmodel.tiff']);
    saveas(fig,[resultfolder,'Fig2D_V1_cardmodel.pdf']);
    close all;
    
end  
for V1caseradfit = 1
    
    colorb = [20 20 200]/255;
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    fig = figure('color',[1 1 1]);
    set(fig,'units','normalized','position',[0.1 0.1 0.4 0.25*1.3]);
    hold on;
    plottype = [{'o'}];
    g = plot(ones(size(tempdata,2)+1,1)*(100/size(tempdata,2)),'--');hold on;
    set(g,'color',[0.5 0.5 0.5],'LineWidth',2);
    h(1) = plot([meandata,meandata(1)],plottype{1});hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([meandata,meandata(1)],'--');hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([20:1:360+20]/20,[yyb,yyb(1)],'-');hold on;
    set(h(1),'color',colorb,'LineWidth',3.5);
    set(gca,'box','off');
    xlim([0.5,19.6]);
    ylim([4.4,7.3]);
    ylim([3.1,9.5]);
    set(gca,'XTick',[1:4.5:50],'Xticklabel',{''},'fontsize',27);
    set(gca,'Yticklabel',num2str(get(gca,'YTick')','%.1f'))
    set(gca,'linewidth',1.5);
    saveas(fig,[resultfolder,'Fig2D_V1_radmodel.tiff']);
    saveas(fig,[resultfolder,'Fig2D_V1_radmodel.pdf']);
    close all;
end   
for V1casecombfit = 1
    
    colorc = [220 20 220]/255;    
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    fig = figure('color',[1 1 1]);
    set(fig,'units','normalized','position',[0.1 0.1 0.4 0.25*1.3]);
    hold on;
    plottype = [{'o'}];
    g = plot(ones(size(tempdata,2)+1,1)*(100/size(tempdata,2)),'--');hold on;
    set(g,'color',[0.5 0.5 0.5],'LineWidth',2);
    h(1) = plot([meandata,meandata(1)],plottype{1});hold on;
    set(h(1),'color',[ 0 0 0],'LineWidth',2.5);
    h(1) = plot([meandata,meandata(1)],'--');hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([20:1:360+20]/20,[yyc,yyc(1)],'-');hold on;
    set(h(1),'color',colorc,'LineWidth',3.5);
    set(gca,'box','off');
    xlim([0.5,19.6]);
    ylim([4.4,7.3]);
    ylim([3.1,9.5]);
    set(gca,'XTick',[1:4.5:50],'Xticklabel',{''},'fontsize',27);
    set(gca,'Yticklabel',num2str(get(gca,'YTick')','%.1f'))
    set(gca,'linewidth',1.5);
    saveas(fig,[resultfolder,'Fig2D_V1_combmodel.tiff']);
    saveas(fig,[resultfolder,'Fig2D_V1_combmodel.pdf']);
    close all;
    
end   

%%  RV4 single case No.01
%%%%%%%%%% 18 bins pixel percentage curve  %%% generate in step01
OrdCurve = [8.39248847535281,6.39313143275108,6.77904804002331,5.89793329851526,8.49202592484707,5.71296708368360,6.17337286039895,5.97326552512481,6.43080776455855,9.16080484213970,6.23803446075303,6.58954870192561,5.53900927732703,6.41628812459442,6.26318565400844;6.38451313668373,5.08524755751380,5.99545920315043,4.55495038424233,7.16483396446257,4.68773179053553,5.83520788952285,5.94527131059581,5.46649968691296,8.45920351891234,5.36375239310785,5.63288806192842,5.37468761767827,5.78628596149686,6.01265822784810;4.57874939902147,4.36425697915397,4.91049004440337,3.53652167425203,5.30603699388290,4.64982116072459,5.37935554992775,5.62450426911772,4.24546023794615,6.36530526928040,5.30312699425654,5.39942775895663,4.50857553661292,5.51319489508977,5.78850210970464;3.86323142622812,4.41998571951028,3.84561290711458,3.34813101544430,4.48860326245267,5.19210799584631,4.78198042516424,5.18709466710213,4.17658108954289,5.11841794354472,4.54690491384812,5.43102389018589,4.93649652528157,5.10491023145144,6.05661040787623;3.69637150371900,4.82227756395744,3.84159450282293,3.87226740282026,4.07806583163414,5.05694835912905,4.98011232440002,5.16959828302151,4.75767063243582,3.98604067833579,4.66496490108488,5.10979655602170,5.00496388346856,4.89941596365996,6.57964135021097;3.98766933454000,5.41439543024329,4.04653312169737,4.15019025591286,4.08807893970288,4.87398836308494,5.83818731657902,5.52885736947698,5.04821540388228,3.93151207808496,5.22016592214423,5.56442977759834,4.87829927082264,5.13735669478694,5.89398734177215;4.93933651969796,5.49276397136936,4.26151775130096,4.57360292471835,4.48769297990096,5.12452817748768,6.34915905671339,5.32823216535249,6.02254226675016,4.20051983932239,6.78366305041481,5.93831733047798,5.19667248639211,5.22388059701493,4.75562587904360;6.07341836590401,6.05701746747706,4.45841956159209,4.76758934566888,4.96012962423536,4.94980962270682,7.90144055298166,5.56268371203285,6.71008140262993,4.87849210244106,6.52839821314614,6.37890782706384,5.34387730649413,5.77006272982912,5.02373417721519;7.28810203908482,5.97690740321485,5.47105744308935,5.90539431470566,5.72294640256336,5.38825429791162,8.92189431972232,5.85545653898194,7.24358171571697,5.78003162658815,5.42437779195916,6.06119117414734,5.42603813631851,6.13508544235345,4.86990154711674;7.11417178087616,5.55197575799795,7.15677804343895,6.83988659255391,6.02333964462569,6.35085463745900,7.75246920017281,5.80879951476695,6.33562930494678,6.49617390988240,5.13082322910019,5.50123751513981,5.55954948478313,6.07019251568246,4.80397327707454;6.16816086427784,5.83584402918793,8.36631773522734,7.31552637469223,5.86312991552578,6.69699517051542,5.87840958183741,5.47636821723510,5.19223544145272,6.15446134831052,5.04786215698787,5.13963734662711,5.65198041833556,5.57538394981614,4.69409282700422;5.10054017364745,5.39001410633740,8.40449257599807,7.33604416921585,5.36156422953685,6.55853895729285,4.71196388934408,5.41571408575561,4.64746399499061,5.47648908519185,5.34141671984684,4.77803717811441,5.94296669063024,5.23469608479342,4.43917018284107;4.61551514465907,5.49624701764163,6.97996825460610,6.52279340446169,4.75349548499854,6.22723301851028,4.11160933752439,5.43670974665236,4.19787100814026,4.54223240089427,5.98596043395022,4.83069739682986,5.84368902125912,5.15357992645468,4.43037974683544;4.33694391809723,4.95463332230369,5.97536718169215,5.87181974184884,4.74712350713662,5.81680924360052,3.67512327379445,5.10194559790977,4.72510958046337,3.92424159805151,6.51563497128271,5.21687233407643,5.50135223032419,5.26714254812892,5.04571026722925;4.27048276252156,5.13923477473398,5.04711579031966,5.59949265089905,5.05570929216429,5.20199772536221,3.62745244089562,5.37955489198899,5.43644333124609,3.83517821764182,5.64773452456924,4.99394407484772,5.95666016226764,5.28606965174129,6.00826300984529;5.17548573206256,5.99954720398461,4.34992264571739,5.89047228232485,5.29420332071075,5.20529430186751,3.96561741177172,5.43904259786311,5.82216656230432,4.38228184015850,4.85003190810466,4.73239832189436,6.27161000992777,5.44289422452953,6.59722222222222;6.45663056081903,6.92081294299995,4.45641035944626,6.94434081921958,6.40565831634139,5.80856780233727,4.58384852592846,5.52885736947698,6.69630557294928,5.48557718523366,4.97128270580728,5.74698520247854,6.67214405532163,5.74302401038287,6.49173699015471;7.55818886280721,6.68570731962174,5.65389483835969,7.07304334850407,7.70736236527818,6.49755229194482,5.53279604332087,6.23804413754491,6.84533500313087,7.82303651598597,6.43586470963625,6.95465955168601,6.39142788675499,6.24053644819381,6.24560478199719];
L55V1bin18 =OrdCurve(:,1)';
%%%%%%%
%%%%%%% radial orientation  %%% generate in step01
RaOri = [43.9094649951697,46.5419388338852,48.9226497426267,47.3698394161760,45.1922118348316,40.7407583578652,45.0109089625959,45.9733877223262,43.5685517709776,45.7300705311051,50.6963086233522,41.7644694828548,41.0718107843144,40.1657385874589,47.8888037784861];
RaOri = RaOri(1);
%%%%%%%

i=1;
for combfit = 1
    
    para = [];w1=[];w2=[];w=[];
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    amp1 = mean(meandata([1 2 9 10 11])) - mean(meandata([4 5 14 15]));
    amp2 = max(meandata(4:16))-min(meandata(4:16));
    radialloc = RaOri(i)/10+1;
    yfit0 = min(meandata);
    warning('off')    
    opts = statset('FunValCheck','off','MaxIter',10000,'TolFun',1e-10);
    xfit = [0:20:360-20];
    yfit = meandata';
    
    func0 = [amp1/(60./180*pi);60./180*pi;amp2/(60./180*pi);120./180*pi;yfit0] ;  %%%%%amplitude  half-width   prefer-ori  baseline
    fun = @(beta,x) abs(beta(1)).*exp(abs(beta(2)).*cos(x./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((x-180)./180*pi))+abs(beta(3)).*exp(abs(beta(4)).*cos((x-(RaOri(i))*2)./180*pi))+abs(beta(5));
    Umodel = fitnlm(xfit,yfit,fun,func0,'Options',opts);
    beta = table2array(Umodel.Coefficients(:,1));
    xx =[0:360-1]; %
    yy =abs(beta(1)).*exp(abs(beta(2)).*cos(xx./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((xx-180)./180*pi))+abs(beta(3)).*exp(abs(beta(4)).*cos((xx-(RaOri(i))*2)./180*pi))+abs(beta(5));
    yy1 =abs(beta(1)).*exp(abs(beta(2)).*cos(xx./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((xx-180)./180*pi));
    yy1 = yy1-min(yy1(:));
    w(i,1) = (max(yy1)-min(yy1));
    yy2 =abs(beta(3)).*exp(abs(beta(4)).*cos((xx-(RaOri(i))*2)./180*pi));
    yy2 = yy2-min(yy2(:));
    w(i,2) = (max(yy2)-min(yy2));
    temppeak = find(abs(yy2)==max(abs(yy2)));
    yyn = find((abs(temppeak)-RaOri(i)*2)==min((abs(temppeak)-RaOri(i)*2)));
    peak(i,1) = temppeak(yyn(1));
    para(i,[1 2]) = w(i,[1 2]);                     %%% Ac and Ar
    para(i,3) = mean(yy-yy1-yy2);                   %%% A0
    para(i,4) = peak(i,1) ;                         %%% radial orientation
    para(i,5) = Umodel.Rsquared.Adjusted ;          %%% adjusted R2
    para(i,6) = Umodel.LogLikelihood ;              %%% LogLikelihood
    para(i,7) = Umodel.DFE ;                        %%% df
    para(i,8) = Umodel.ModelCriterion.AIC ;         %%% AIC
    para(i,9) = Umodel.ModelCriterion.AICc ;        %%% AICc
    para(i,10) = Umodel.ModelCriterion.BIC ;        %%% BIC
    parac = para;
    yyc = yy;
    yycard = yy1;
    yyrad = yy2;
    
end;  parac;         %%%combined model fitting
for cardfit = 1
    
    para = [];w1=[];w2=[];w=[];
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    amp1 = mean(meandata([1 2 9 10 11])) - mean(meandata([4 5 14 15]));
    amp2 = max(meandata(4:16))-min(meandata(4:16));
    radialloc = RaOri(i)/10+1;
    yfit0 = min(meandata);
    warning('off')    
    opts = statset('FunValCheck','off','MaxIter',10000,'TolFun',1e-10);
    xfit = [0:20:360-20];
    yfit = meandata';

    func0 = [amp1/(60./180*pi);60./180*pi;yfit0] ;  %%%%%amplitude  half-width   prefer-ori  baseline
    fun = @(beta,x) abs(beta(1)).*exp(abs(beta(2)).*cos(x./180*pi))+abs(beta(1)).*exp(abs(beta(2)).*cos((x-180)./180*pi))+abs(beta(3));
    Umodel2p = fitnlm(xfit,yfit,fun,func0,'Options',opts);
    beta2p = table2array(Umodel2p.Coefficients(:,1));
    yy2p =abs(beta2p(1)).*exp(abs(beta2p(2)).*cos(xx./180*pi))+abs(beta2p(1)).*exp(abs(beta2p(2)).*cos((xx-180)./180*pi)); 
    yy2p2 =abs(beta2p(1)).*exp(abs(beta2p(2)).*cos(xx./180*pi))+abs(beta2p(1)).*exp(abs(beta2p(2)).*cos((xx-180)./180*pi))+abs(beta2p(3)); 
    yy2p = yy2p-min(yy2p(:));
    para2p(i,[1]) = max(yy2p(:))-min(yy2p(:));                      %%% Ac
    para2p(i,3) = abs(beta2p(3))+min(yy2p(:));                      %%% A0
    para2p(i,5) = Umodel2p.Rsquared.Adjusted ;                      %%% adjusted R2
    para2p(i,6) = Umodel2p.LogLikelihood ;                          %%% LogLikelihood
    para2p(i,7) = Umodel2p.DFE ;                                    %%% df
    para2p(i,8) = Umodel2p.ModelCriterion.AIC ;                     %%% AIC
    para2p(i,9) = Umodel2p.ModelCriterion.AICc ;                    %%% AICc
    para2p(i,10) = Umodel2p.ModelCriterion.BIC ;                    %%% BIC
    paraa = para2p;yya = yy2p2;
        
end;  paraa;         %%%cardinal model fitting
for radfit = 1
    
    para = [];w1=[];w2=[];w=[];
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    amp1 = meandata(1) - mean(meandata([4 5 14 15]));
    amp2 = max(meandata(4:16))-meandata(1);
    radialloc = find(meandata == max(meandata(4:16)));
    yfit0 = min(meandata);
    warning('off')    
    opts = statset('nlinfit');
    opts.FunValCheck = 'off';
    xfit = [0:20:360-20];
    yfit = meandata;
    
    func0 = [amp2/(60./180*pi);120./180*pi;yfit0] ;  %%%%%amplitude  half-width   prefer-dir  baseline
    fun = @(beta,x) abs(beta(1)).*exp(abs(beta(2)).*cos((x-(RaOri(i))*2)./180*pi))+abs(beta(3));
    Umodel1p = fitnlm(xfit,yfit,fun,func0,'Options',opts);
    beta1p = table2array(Umodel1p.Coefficients(:,1));
    yy1p =abs(beta1p(1)).*exp(abs(beta1p(2)).*cos((xx-(RaOri(i))*2)./180*pi));
    yy1p2 =abs(beta1p(1)).*exp(abs(beta1p(2)).*cos((xx-(RaOri(i))*2)./180*pi))+abs(beta1p(3));
    yy1p = yy1p-min(yy1p(:));
    temppeak = find(yy1p==max(yy1p(:)));
    yyn = find((abs(temppeak)-RaOri(i)*2)==min((abs(temppeak)-RaOri(i)*2)));
    para1p(i,[2]) = max(yy1p(:))-min(yy1p(:));                      %%% Ar
    para1p(i,3) = abs(beta1p(3))+min(yy1p(:));                      %%% A0
    para1p(i,4) =  temppeak(yyn);                                   %%% radial orientation
    para1p(i,5) = Umodel1p.Rsquared.Adjusted ;                      %%% adjusted R2
    para1p(i,6) = Umodel1p.LogLikelihood ;                          %%% LogLikelihood
    para1p(i,7) = Umodel1p.DFE ;                                    %%% df
    para1p(i,8) = Umodel1p.ModelCriterion.AIC ;                     %%% AIC
    para1p(i,9) = Umodel1p.ModelCriterion.AICc ;                    %%% AICc
    para1p(i,10) = Umodel1p.ModelCriterion.BIC ;                    %%% BIC
    parab = para1p; yyb = yy1p2;
    
end;  parab;         %%%radial model fitting

resultfolder = [pwd,'\Figure_Results\'];
if ~exist(resultfolder)
   mkdir(resultfolder) 
end

for V4casecardfit = 1
    
    colora = [200 20 20]/255;
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    fig = figure('color',[1 1 1]);
    set(fig,'units','normalized','position',[0.1 0.1 0.4 0.25*1.3]);
    hold on;
    
    plottype = [{'o'}];
    g = plot(ones(size(tempdata,2)+1,1)*(100/size(tempdata,2)),'--');hold on;
    set(g,'color',[0.5 0.5 0.5],'LineWidth',2);
    h(1) = plot([meandata,meandata(1)],plottype{1});hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([meandata,meandata(1)],'--');hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([20:1:360+20]/20,[yya,yya(1)],'-');hold on;
    set(h(1),'color',colora,'LineWidth',3.5);
    set(gca,'box','off');
    xlim([0.5,19.6]);
    ylim([3.1,9.5]);
    set(gca,'XTick',[1:4.5:50],'Xticklabel',{''},'fontsize',27);
    set(gca,'Yticklabel',num2str(get(gca,'YTick')','%.1f'))
    set(gca,'linewidth',1.5);
    saveas(fig,[resultfolder,'Fig2H_V4_cardmodel.tiff']);
    saveas(fig,[resultfolder,'Fig2H_V4_cardmodel.pdf']);
    close all;
    
end  
for V4caseradfit = 1
    
    colorb = [20 20 200]/255;
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    fig = figure('color',[1 1 1]);
    set(fig,'units','normalized','position',[0.1 0.1 0.4 0.25*1.3]);
    hold on;
    plottype = [{'o'}];
    g = plot(ones(size(tempdata,2)+1,1)*(100/size(tempdata,2)),'--');hold on;
    set(g,'color',[0.5 0.5 0.5],'LineWidth',2);
    h(1) = plot([meandata,meandata(1)],plottype{1});hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([meandata,meandata(1)],'--');hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([20:1:360+20]/20,[yyb,yyb(1)],'-');hold on;
    set(h(1),'color',colorb,'LineWidth',3.5);
    set(gca,'box','off');
    xlim([0.5,19.6]);
    ylim([4.4,7.3]);
    ylim([3.1,9.5]);
    set(gca,'XTick',[1:4.5:50],'Xticklabel',{''},'fontsize',27);
    set(gca,'Yticklabel',num2str(get(gca,'YTick')','%.1f'))
    set(gca,'linewidth',1.5);
    saveas(fig,[resultfolder,'Fig2H_V4_radmodel.tiff']);
    saveas(fig,[resultfolder,'Fig2H_V4_radmodel.pdf']);
    close all;
end   
for V4casecombfit = 1
    
    colorc = [220 20 220]/255;
    tempdata = L55V1bin18;
    meandata = mean(tempdata,1);
    fig = figure('color',[1 1 1]);
    set(fig,'units','normalized','position',[0.1 0.1 0.4 0.25*1.3]);
    hold on;
    plottype = [{'o'}];
    g = plot(ones(size(tempdata,2)+1,1)*(100/size(tempdata,2)),'--');hold on;
    set(g,'color',[0.5 0.5 0.5],'LineWidth',2);
    h(1) = plot([meandata,meandata(1)],plottype{1});hold on;
    set(h(1),'color',[ 0 0 0],'LineWidth',2.5);
    h(1) = plot([meandata,meandata(1)],'--');hold on;
    set(h(1),'color',[0 0 0],'LineWidth',2.5);
    h(1) = plot([20:1:360+20]/20,[yyc,yyc(1)],'-');hold on;
    set(h(1),'color',colorc,'LineWidth',3.5);
    set(gca,'box','off');
    xlim([0.5,19.6]);
    ylim([4.4,7.3]);
    ylim([3.1,9.5]);
    set(gca,'XTick',[1:4.5:50],'Xticklabel',{''},'fontsize',27);
    set(gca,'Yticklabel',num2str(get(gca,'YTick')','%.1f'))
    set(gca,'linewidth',1.5);
    saveas(fig,[resultfolder,'Fig2H_V4_combmodel.tiff']);
    saveas(fig,[resultfolder,'Fig2H_V4_combmodel.pdf']);
    close all;
    
end   


