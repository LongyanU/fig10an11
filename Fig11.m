
clear;
clc
close all;
Font_size = 20;
f=fopen('ps_mig_Marmousi-WATER0-conventional.dat','rb');
b=fread(f,'float32');  
fclose(f);
B=reshape(b,201,301);
figure;imagesc(B,[-4*10^-20 2*10^-20])
colormap gray

xlabel('x/dx','FontSize',Font_size)
ylabel('z/dz','FontSize',Font_size)


f=fopen('ps_mig_Marmousi-WATER0.dat','rb');
b=fread(f,'float32');  
fclose(f);
B2=reshape(b,201,301);
figure;imagesc(B2,[-4*10^-20 2*10^-20])
colormap gray

xlabel('x/dx','FontSize',Font_size)
ylabel('z/dz','FontSize',Font_size)

figure;imagesc(10*(B2-B),[-4*10^-20 2*10^-20])
colormap gray

xlabel('x/dx','FontSize',Font_size)
ylabel('z/dz','FontSize',Font_size)

figure;imagesc((B2-B),[-4*10^-20 2*10^-20])
colormap gray

xlabel('x/dx','FontSize',Font_size)
ylabel('z/dz','FontSize',Font_size)