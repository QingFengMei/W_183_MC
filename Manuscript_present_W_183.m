%% This script is for the Figure in the manuscript  Pure NC and pure CC
clc
clear all
close all
%% Scenarios
sc1 = 'GI = CC, LV = NC, pE = CC';
sc2 = 'GI = NC, LV = CC, pE = CC';
sc3 = 'GI = NC, LV = NC, pE = CC';
sc4 = 'GI = CC, LV = NC, pE = NC';
sc5 = 'GI = CC, LV = CC, pE = NC';
sc6 = 'GI = NC, LV = CC, pE = NC';
sc7 = "GI = NC-CC";
sc7 = sc7 + newline + "LV = CC";
sc7 = sc7 + newline + "pE = NC";
sc8 = "GI = NC-CC";
sc8 = sc8 + newline + "LV = NC";
sc8 = sc8 + newline + "pE = NC";
sc9 = "GI = NC-CC";
sc9 = sc9 + newline + "LV = NC-CC";
sc9 = sc9 + newline + "pE = NC";

%% Calculation X --> K, Y --> Mo, YY --> W
[X1,Y1,YY1] = cal_Mo_W_iso('CC','NC','CC');
[X2,Y2,YY2] = cal_Mo_W_iso('NC','CC','CC');
[X3,Y3,YY3] = cal_Mo_W_iso('NC','NC','CC');
[X4,Y4,YY4] = cal_Mo_W_iso('CC','NC','NC');
[X5,Y5,YY5] = cal_Mo_W_iso('CC','CC','NC');
[X6,Y6,YY6] = cal_Mo_W_iso('NC','CC','NC');
[X7,Y7,YY7]= cal_Mo_W_iso('NC-CC','CC','NC');
[X8,Y8,YY8] = cal_Mo_W_iso('NC-CC','NC','NC');
[X9,Y9,YY9] = cal_Mo_W_iso('NC-CC','NC-CC','NC');
%% Figure
figure(1);
% INPUT TIGHTPLOT PARAMETERS
TightPlot.ColumeNumber = 3;     % 子图行数
TightPlot.RowNumber = 3;    % 子图列数
TightPlot.GapW = 0.05;  % 子图之间的左右间距
TightPlot.GapH = 0.05;   % 子图之间的上下间距
TightPlot.MarginsLower = 0.05;   % 子图与图片上方的间距
TightPlot.MarginsUpper = 0.10;  % 子图与图片下方的间距
TightPlot.MarginsLeft = 0.10;   % 子图与图片左方的间距
TightPlot.MarginsRight = 0.05;  % 子图与图片右方的间距
p = tight_subplot(TightPlot.ColumeNumber,TightPlot.RowNumber,...
    [TightPlot.GapH TightPlot.GapW],...
    [TightPlot.MarginsLower TightPlot.MarginsUpper],...
    [TightPlot.MarginsLeft TightPlot.MarginsRight]);    % 具体设置参数上一节已经输入了



% sub1 = subplot(3,3,1);
axes(p(1));
plot(X1,YY1,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t1 = text(0.98,0.98,'(a)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_1 = text(0.5,0.05,sc1,'Units','normalized',...
    'fontsize',10, VerticalAlignment='baseline',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub2 = subplot(3,3,2);
axes(p(2));
plot(X2,YY2,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t2 = text(0.98,0.98,'(b)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_2 = text(0.5,0.05,sc2,'Units','normalized',...
    'fontsize',10, VerticalAlignment='baseline',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub3 = subplot(3,3,3);
axes(p(3));
plot(X3,YY3,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t3 = text(0.98,0.98,'(c)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_3 = text(0.5,0.05,sc3,'Units','normalized',...
    'fontsize',10, VerticalAlignment='baseline',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub4 = subplot(3,3,4);
axes(p(4));
plot(X4,YY4,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t4 = text(0.98,0.98,'(d)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_4 = text(0.5,0.85,sc4,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
ylabel('Predicted μ^{183}W of the BSE',FontSize=12)
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub5 = subplot(3,3,5);
axes(p(5));
plot(X5,YY5,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t5 = text(0.98,0.98,'(e)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_5 = text(0.5,0.85,sc5,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub6 = subplot(3,3,6);
axes(p(6));
plot(X6,YY6,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t6 = text(0.98,0.98,'(f)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_6 = text(0.5,0.85,sc6,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub7 = subplot(3,3,7);
axes(p(7));
plot(X7,YY7,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t7 = text(0.98,0.98,'(g)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_7 = text(0.5,0.85,sc7,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub8 = subplot(3,3,8);
axes(p(8));
plot(X8,YY8,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t8 = text(0.98,0.98,'(h)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_8 = text(0.5,0.85,sc8,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xlabel("Degree of equilibration of impactor core with proto-Earth's mantle",FontSize=12)
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

% sub9 = subplot(3,3,9);
axes(p(9));
plot(X9,YY9,'.', MarkerSize=0.5)
% axis square
hold on
yline([0],'r',LineWidth=1.5)
ylim([-5,30]);
t9 = text(0.98,0.98,'(i)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t1_9 = text(0.5,0.85,sc9,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20','30'})
yticks([0,10,20,30])

figure(2);
subplot(2,2,1)
re1=rectangle('Position',[0,2,1,10],'FaceColor',[0.5, 0.5, 0.5],'EdgeColor','none');
box on
hold on
plot(X6,Y6,'.',MarkerSize=0.5,Color=[227, 140,136]./255)
ylim([-10,25]);
tt1 = text(0.98,0.98,'(a)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t2_1 = text(0.5,0.90,sc6,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20'})
yticks([0,10,20])
xlabel('{\itk} value',FontSize=12)
ylabel('Predicted \Delta^{95}Mo of the BSE',FontSize=12)

subplot(2,2,2)
re2=rectangle('Position',[0,2,1,10],'FaceColor',[0.5, 0.5, 0.5],'EdgeColor','none');
box on
hold on
plot(X7,Y7,'.',MarkerSize=0.5,Color=[227, 140,136]./255)
ylim([-10,25]);
tt2 = text(0.98,0.98,'(b)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t2_2 = text(0.5,0.30,sc7,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20'})
yticks([0,10,20])
xlabel('{\itk} value',FontSize=12)
ylabel('Predicted \Delta^{95}Mo of the BSE',FontSize=12)

subplot(2,2,3)
re3=rectangle('Position',[0,2,1,10],'FaceColor',[0.5, 0.5, 0.5],'EdgeColor','none');
box on
hold on
plot(X8,Y8,'.',MarkerSize=0.5,Color=[227, 140,136]./255)
ylim([-10,25]);
tt3 = text(0.98,0.98,'(c)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t2_3 = text(0.5,0.9,sc8,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20'})
yticks([0,10,20])
xlabel('{\itk} value',FontSize=12)
ylabel('Predicted \Delta^{95}Mo of the BSE',FontSize=12)

subplot(2,2,4)
re4=rectangle('Position',[0,2,1,10],'FaceColor',[0.5, 0.5, 0.5],'EdgeColor','none');
box on
hold on
plot(X9,Y9,'.',MarkerSize=0.5,Color=[227, 140,136]./255)
ylim([-10,25]);
tt4 = text(0.98,0.98,'(d)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');
t2_4 = text(0.5,0.90,sc9,'Units','normalized',...
    'fontsize',10, VerticalAlignment='top',HorizontalAlignment='center',Fontsize=8);
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
yticklabels({'0','10','20'})
yticks([0,10,20])
xlabel('{\itk} value',FontSize=12)
ylabel('Predicted \Delta^{95}Mo of the BSE',FontSize=12)



%% Save figure
% set(gcf,'renderer','Painters')
% set(gcf, 'PaperUnits', 'normalized');set(gcf, 'PaperType', 'A4');
% set(gcf, 'PaperOrientation', 'portrait');set(gcf, 'PaperPosition', [0 0 1 1]); %%%  [left bottom width height]
% print(gcf, '-dpdf', ['A_Misfit_' datestr(now, 30)]);
% set(gcf, 'NextPlot', 'new'); % next plot in new figure, do not overwrite

function [K_list, ISO_BSE_Mo_list, ISO_BSE_W_list] = cal_Mo_W_iso(GI_c,LV_c,pE_c)
%% Some constants
n_MC = 10000;
g = 0.1;  % impactor-to-Earth ratio. Canup and Asphaug, (2001) Nature.
r = 0.675;  % mantle mass fraction for both Earth and the impactor.
%% Monte Carlo Sampling
K_list = [];
ISO_BSE_Mo_list = [];
ISO_BSE_W_list = [];
while length(K_list)<n_MC
    K = rand;
    f = unifrnd(0.003,0.008);
    D_Mo_e = unifrnd(100,200); % Why not (90,140)
    D_Mo_gi = unifrnd(100,1000);
    C_Mo_bse = 23 + 3.5.*randn;
    
    D_W_e = unifrnd(30,50);
    D_W_gi = unifrnd(30,10000); %
    C_W_bse = 12; %Konig et al., 2011

    CC_Mo_W = [26+randn,unifrnd(900,1600),unifrnd(8,30),unifrnd(100,200)];
    NC_Mo_W = [-9+randn,unifrnd(900,1600),unifrnd(-5,0),unifrnd(100,200)];
    NC_CC_Mo_W = [7+2.5.*randn,unifrnd(900,1600),2.5.*randn,unifrnd(100,200)];
    if strcmpi(GI_c,'CC')
        GI = CC_Mo_W;
    elseif strcmpi(GI_c,'NC')
        GI = NC_Mo_W;
    elseif strcmpi(GI_c,'NC-CC')
        GI = NC_CC_Mo_W;
    end
    if strcmpi(LV_c,'CC')
        LV = CC_Mo_W;
    elseif strcmpi(LV_c,'NC')
        LV = NC_Mo_W;
    elseif strcmpi(LV_c,'NC-CC')
        LV = NC_CC_Mo_W;
    end
    if strcmpi(pE_c,'CC')
        pE = CC_Mo_W;
    elseif strcmpi(pE_c,'NC')
        pE = NC_Mo_W;
    elseif strcmpi(pE_c,'NC-CC')
        pE = NC_CC_Mo_W;
    end
    %% Mo isotope calculation (Budde et al., 2019)
    C_Mo_plv = (C_Mo_bse-f.*LV(2))./(1-f);
    C_Mo_gi = (r+K.*(1-r).*D_Mo_gi)./(r+(1-r).*D_Mo_gi).*GI(2); 
    C_Mo_pgi = ((r+g.*K.*(1-r).*D_Mo_e)./(r+g.*K.*(1-r))).*C_Mo_plv;
    C_Mo_pe = (C_Mo_pgi-g.*C_Mo_gi)./(1-g);
    iso_Mo_plv = ((1-g).*C_Mo_pe.*pE(1)+g.*C_Mo_gi.*GI(1))./C_Mo_pgi;
    ISO_Mo_BSE = ((1-f).*C_Mo_plv.*iso_Mo_plv+f.*LV(2).*LV(1))./((1-f).*C_Mo_plv+f.*LV(2));
    %% W isotope calculation  (Budde et al., 2019)
    C_W_plv = (C_W_bse-f.*LV(4))./(1-f);
    C_W_gi = (r+K.*(1-r).*D_W_gi)./(r+(1-r).*D_W_gi).*GI(4); 
    C_W_pgi = ((r+g.*K.*(1-r).*D_W_e)./(r+g.*K.*(1-r))).*C_W_plv;
    C_W_pe = (C_W_pgi-g.*C_W_gi)./(1-g);
    iso_W_plv = ((1-g).*C_W_pe.*pE(3)+g.*C_W_gi.*GI(3))./C_W_pgi;
    ISO_W_BSE = ((1-f).*C_W_plv.*iso_W_plv+f.*LV(4).*LV(3))./((1-f).*C_W_plv+f.*LV(4));

    if C_Mo_pe>0 & C_W_pe>0
        K_list = [K_list,K];
        ISO_BSE_Mo_list = [ISO_BSE_Mo_list,ISO_Mo_BSE];
        ISO_BSE_W_list = [ISO_BSE_W_list,ISO_W_BSE];
    end
end
end
