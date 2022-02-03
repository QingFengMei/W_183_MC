%% Model estimates for the amount of late veneer added to the Eoarchaean mantle based on W isotope compositions
% Modern mantle -> mm
% plot CC 182W
total_no = 10000;
AMOUNT = [];
ISO_MIX_182_W = [];
ISO_MIX_183_W = [];
for item = 1:total_no
amount = rand;
f = unifrnd(0.003,0.008);
C_W_BSE = 12;
C_W_LV = unifrnd(100,200);
mu_182_W_LV = unifrnd(-250,-150);
mu_183_W_LV = unifrnd(8,30);
C_plv = (C_W_BSE -f.*C_W_LV)./(1-f);
C_mix = C_plv.*(1-f.*amount) + f.*amount.*C_W_LV;
iso_plv_182_W = -(f.*mu_182_W_LV.*C_W_LV)./C_plv./(1-f);
iso_mix_182_W = (iso_plv_182_W.*C_plv.*(1-f.*amount) + f.*amount.*mu_182_W_LV.*C_W_LV)./C_mix;
iso_plv_183_W = -(f.*mu_183_W_LV.*C_W_LV)./C_plv./(1-f);
iso_mix_183_W = (iso_plv_183_W.*C_plv.*(1-f.*amount) + f.*amount.*mu_183_W_LV.*C_W_LV)./C_mix;
AMOUNT = [AMOUNT,amount];
ISO_MIX_182_W = [ISO_MIX_182_W,iso_mix_182_W];
ISO_MIX_183_W = [ISO_MIX_183_W,iso_mix_183_W];
end

subplot(2,1,1)
plot(AMOUNT,ISO_MIX_182_W,'.',MarkerSize=0.5)
hold on
subplot(2,1,2)
plot(AMOUNT,ISO_MIX_183_W,'.',MarkerSize=0.5)
hold on
% plot NC 182W
AMOUNT = [];
ISO_MIX_182_W = [];
ISO_MIX_183_W = [];
for item = 1:total_no
amount = rand;
f = unifrnd(0.003,0.008);
C_W_BSE = 12;
C_W_LV = unifrnd(100,200);
mu_182_W_LV = -190 + 5.*randn;
mu_183_W_LV = unifrnd(-5,0);
C_plv = (C_W_BSE -f.*C_W_LV)./(1-f);
C_mix = C_plv.*(1-f.*amount) + f.*amount.*C_W_LV;
iso_plv_182_W = -(f.*mu_182_W_LV.*C_W_LV)./C_plv./(1-f);
iso_mix_182_W = (iso_plv_182_W.*C_plv.*(1-f.*amount) + f.*amount.*mu_182_W_LV.*C_W_LV)./C_mix;
iso_plv_183_W = -(f.*mu_183_W_LV.*C_W_LV)./C_plv./(1-f);
iso_mix_183_W = (iso_plv_183_W.*C_plv.*(1-f.*amount) + f.*amount.*mu_183_W_LV.*C_W_LV)./C_mix;
AMOUNT = [AMOUNT,amount];
ISO_MIX_182_W = [ISO_MIX_182_W,iso_mix_182_W];
ISO_MIX_183_W = [ISO_MIX_183_W,iso_mix_183_W];
end
subplot(2,1,1)
plot(AMOUNT,ISO_MIX_182_W,'.r',MarkerSize=0.5)
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
ylim([0,40])
yticks([0,10,20,30,40])
yticklabels({'0','10','20','30','40'})
xlabel('Mass fraction of late veneer',FontSize=12)
ylabel('μ^{182}W',FontSize=12)
legend('LV = CC','LV = NC',Location='east')
tt1 = text(0.98,0.98,'(a)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');


subplot(2,1,2)
plot(AMOUNT,ISO_MIX_183_W,'.r',MarkerSize=0.5)
xticklabels({'0','0.2','0.4','0.6','0.8','1.0'})
xticks([0,0.2,0.4,0.6,0.8,1.0])
ylim([-4,1])
yticklabels({'−4','−3','−2','−1','0','1'})
yticks([-4,-3,-2,-1,0,1])
xlabel('Mass fraction of late veneer',FontSize=12)
ylabel('μ^{183}W',FontSize=12)
legend('LV = CC','LV = NC',Location='southeast')
tt2 = text(0.98,0.98,'(b)','Units','normalized', 'fontsize',12,'HorizontalAlignment','right',VerticalAlignment='top');









