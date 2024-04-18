clc;
clear all;
close all;


%% ·����ʼ��
root_path = 'D:\bishedate\5';        %���ݼ���·��
img_path = [root_path, '\images\'];     %���ݼ�ͼ�񱣴�·��
label_path = [root_path, '\Annotations\'];  %���ݼ���Ǳ���·��

Fs = 10e6;        % ����Ƶ��
Ts = 1/Fs;        % ��������

Fh1 = 2000;         % ��Ƶ1����
Th1 = 1/Fh1;        % ��Ƶ1����
Fh2 = 1250;         % ��Ƶ2����
Th2 = 1/Fh2;        % ��Ƶ2����
Fh3 = 2500;         % ��Ƶ3����
Th3 = 1/Fh3;        % ��Ƶ3����
Fh4 = 1000;         % ��Ƶ4����
Th4 = 1/Fh4;        % ��Ƶ4����
Fh5 = 500;          % ��Ƶ5����
Th5 = 1/Fh5;        % ��Ƶ5����
Fh6 = 5000;         % ��Ƶ6����
Th6 = 1/Fh6;        % ��Ƶ6����
Fh7 = 4000;         % ��Ƶ7����
Th7 = 1/Fh7;        % ��Ƶ7����
Fh8 = 6250;         % ��Ƶ8����
Th8 = 1/Fh8;        % ��Ƶ8����
Fh9 = 8000;         % ��Ƶ9����
Th9 = 1/Fh9;        % ��Ƶ9����

Nu_1 = 8;                                                   % ����1
Nu_2 = 5;                                                   % ����2
Nu_3 = 10;                                                  % ����3
Nu_4 = 4;                                                   % ����4
Nu_5 = 2;                                                   % ����5
Nu_6 = 20;                                                  % ����6
Nu_7 = 16;                                                  % ����7
Nu_8 = 25;                                                  % ����8
Nu_9 = 32;                                                  % ����9

t = 0:1/Fs:Nu_1*Th1-1/Fs;                                   % ʱ��
%% ����
%������ͬ������£�
%1.��ͬһƵ�ʷ�Χ�ڣ�ÿ����λ�ò�ͬ��
%2.�ڲ�ͬ��Ƶ�ʷ�Χ�ڣ�ÿ����λ����ͬ��
%3.�ڲ�ͬ��Ƶ�ʷ�Χ�ڣ�ÿ����λ�ò�ͬ��


%% ���������
snr=-5;
snr_len = length(snr);
for i = 1:snr_len
%% ��Ƶ�ź�1��Ƶ�ʱ任��������8
%% ��Ƶ�ź�1��Ƶ�ʱ任��������8
f_set_1_1 = linspace(0.5,4,8)*10^6;
f_set_1_1 = f_set_1_1(randperm(length(f_set_1_1)));
f_set_1_1_1 = f_set_1_1(randperm(length(f_set_1_1)));
f_set_1_1_2 = f_set_1_1_1(randperm(length(f_set_1_1_1)));

for j = 1:Nu_1
    FH1_1(round(1+(j-1)*Th1/Ts):round(j*Th1/Ts)) = cos(2*pi*f_set_1_1(j)*t(round(1+(j-1)*Th1/Ts):round(j*Th1/Ts))); % ��Ƶ�ź�1_1
    FH1_1_1(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_1_1(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_1_1
    FH1_1_2(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_1_2(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_1_2
end

f_set_1_2 = linspace(4.13,4.48,8)*10^6;
f_set_1_2 = f_set_1_2(randperm(length(f_set_1_2)));
f_set_1_2_1 = f_set_1_2(randperm(length(f_set_1_2)));
f_set_1_2_2 = f_set_1_2_1(randperm(length(f_set_1_2_1)));

for j = 1:Nu_1
    FH1_2(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_2(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_2
    FH1_2_1(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_2_1(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_2_1
    FH1_2_2(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_2_2(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_2_2
end

f_set_1_3 = linspace(0.2,1.6,8)*10^6;
f_set_1_3 = f_set_1_3(randperm(length(f_set_1_3)));
f_set_1_3_1 = f_set_1_3(randperm(length(f_set_1_3)));
f_set_1_3_2 = f_set_1_3_1(randperm(length(f_set_1_3_1)));

for j = 1:Nu_1
    FH1_3(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_3(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_3
    FH1_3_1(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_3_1(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_3_1
    FH1_3_2(1+(j-1)*Th1/Ts:j*Th1/Ts) = cos(2*pi*f_set_1_3_2(j)*t(1+(j-1)*Th1/Ts:j*Th1/Ts)); % ��Ƶ�ź�1_3_2
end

%% ��Ƶ�ź�2��Ƶ�ʱ任��������5
f_set_2_1 = linspace(2.6,4.6,5)*10^6;
f_set_2_1 = f_set_2_1(randperm(length(f_set_2_1)));
f_set_2_1_1 = f_set_2_1(randperm(length(f_set_2_1)));
f_set_2_1_2 = f_set_2_1_1(randperm(length(f_set_2_1_1)));

for j = 1:Nu_2
    FH2_1(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_1(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_1
    FH2_1_1(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_1_1(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_1_1
    FH2_1_2(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_1_2(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_1_2
end

f_set_2_2 = linspace(2,4,5)*10^6;
f_set_2_2 = f_set_2_2(randperm(length(f_set_2_2)));
f_set_2_2_1 = f_set_2_2(randperm(length(f_set_2_2)));
f_set_2_2_2 = f_set_2_2_1(randperm(length(f_set_2_2_1)));

for j = 1:Nu_2
    FH2_2(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_2(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_2
    FH2_2_1(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_2_1(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_2_1
    FH2_2_2(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_2_2(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_2_2
end

f_set_2_3 = linspace(3.6,4.6,5)*10^6;
f_set_2_3 = f_set_2_3(randperm(length(f_set_2_3)));
f_set_2_3_1 = f_set_2_3(randperm(length(f_set_2_3)));
f_set_2_3_2 = f_set_2_3_1(randperm(length(f_set_2_3_1)));

for j = 1:Nu_2
    FH2_3(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_3(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_3
    FH2_3_1(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_3_1(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_3_1
    FH2_3_2(1+(j-1)*Th2/Ts:j*Th2/Ts) = cos(2*pi*f_set_2_3_2(j)*t(1+(j-1)*Th2/Ts:j*Th2/Ts)); % ��Ƶ�ź�2_3_2
end

%% ��Ƶ�ź�3��Ƶ�ʱ任��������10
f_set_3_1 = linspace(2,2.9,10)*10^6;
f_set_3_1 = f_set_3_1(randperm(length(f_set_3_1)));
f_set_3_1_1 = f_set_3_1(randperm(length(f_set_3_1)));
f_set_3_1_2 = f_set_3_1_1(randperm(length(f_set_3_1_1)));

for j = 1:Nu_3
    FH3_1(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_1(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_1
    FH3_1_1(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_1_1(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_1_1
    FH3_1_2(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_1_2(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_1_2
end

f_set_3_2 = linspace(0.1,1,10)*10^6;
f_set_3_2 = f_set_3_2(randperm(length(f_set_3_2)));
f_set_3_2_1 = f_set_3_2(randperm(length(f_set_3_2)));
f_set_3_2_2 = f_set_3_2_1(randperm(length(f_set_3_2_1)));

for j = 1:Nu_3
    FH3_2(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_2(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_2
    FH3_2_1(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_2_1(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_2_1
    FH3_2_2(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_2_2(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_2_2
end

f_set_3_3 = linspace(3.1,4.9,10)*10^6;
f_set_3_3 = f_set_3_3(randperm(length(f_set_3_3)));
f_set_3_3_1 = f_set_3_3(randperm(length(f_set_3_3)));
f_set_3_3_2 = f_set_3_3_1(randperm(length(f_set_3_3_1)));

for j = 1:Nu_3
    FH3_3(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_3(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_3
    FH3_3_1(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_3_1(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_3_1
    FH3_3_2(1+(j-1)*Th3/Ts:j*Th3/Ts) = cos(2*pi*f_set_3_3_2(j)*t(1+(j-1)*Th3/Ts:j*Th3/Ts)); % ��Ƶ�ź�3_3_2
end

%% ��Ƶ�ź�4��Ƶ�ʱ任��������4
f_set_4_1 = linspace(4.05,4.95,4)*10^6;
f_set_4_1 = f_set_4_1(randperm(length(f_set_4_1)));
f_set_4_1_1 = f_set_4_1(randperm(length(f_set_4_1)));
f_set_4_1_2 = f_set_4_1_1(randperm(length(f_set_4_1_1)));

for j = 1:Nu_4
    FH4_1(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_1(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_1
    FH4_1_1(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_1_1(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_1_1
    FH4_1_2(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_1_2(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_1_2
end

f_set_4_2 = linspace(1.3,1.5,4)*10^6;
f_set_4_2 = f_set_4_2(randperm(length(f_set_4_2)));
f_set_4_2_1 = f_set_4_2(randperm(length(f_set_4_2)));
f_set_4_2_2 = f_set_4_2_1(randperm(length(f_set_4_2_1)));

for j = 1:Nu_4
    FH4_2(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_2(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_2
    FH4_2_1(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_2_1(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_2_1
    FH4_2_2(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_2_2(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_2_2
end

f_set_4_3 = linspace(4.3,4.6,4)*10^6;
f_set_4_3 = f_set_4_3(randperm(length(f_set_4_3)));
f_set_4_3_1 = f_set_4_3(randperm(length(f_set_4_3)));
f_set_4_3_2 = f_set_4_3_1(randperm(length(f_set_4_3_1)));

for j = 1:Nu_4
    FH4_3(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_3(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_3
    FH4_3_1(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_3_1(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_3_1
    FH4_3_2(1+(j-1)*Th4/Ts:j*Th4/Ts) = cos(2*pi*f_set_4_3_2(j)*t(1+(j-1)*Th4/Ts:j*Th4/Ts)); % ��Ƶ�ź�4_3_2
end

%% ��Ƶ�ź�5��Ƶ�ʱ任��������2
f_set_5_1 = linspace(2.2,3.7,2)*10^6;
f_set_5_1 = f_set_5_1(randperm(length(f_set_5_1)));
f_set_5_1_1 = f_set_5_1(randperm(length(f_set_5_1)));
f_set_5_1_2 = f_set_5_1_1(randperm(length(f_set_5_1_1)));

for j = 1:Nu_5
    FH5_1(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_1(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_1
    FH5_1_1(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_1_1(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_1_1
    FH5_1_2(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_1_2(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_1_2
end

f_set_5_2 = linspace(1.8,1.9,2)*10^6;
f_set_5_2 = f_set_5_2(randperm(length(f_set_5_2)));
f_set_5_2_1 = f_set_5_2(randperm(length(f_set_5_2)));
f_set_5_2_2 = f_set_5_2_1(randperm(length(f_set_5_2_1)));

for j = 1:Nu_5
    FH5_2(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_2(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_2
    FH5_2_1(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_2_1(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_2_1
    FH5_2_2(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_2_2(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_2_2
end

f_set_5_3 = linspace(3.5,3.9,2)*10^6;
f_set_5_3 = f_set_5_3(randperm(length(f_set_5_3)));
f_set_5_3_1 = f_set_5_3(randperm(length(f_set_5_3)));
f_set_5_3_2 = f_set_5_3_1(randperm(length(f_set_5_3_1)));

for j = 1:Nu_5
    FH5_3(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_3(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_3
    FH5_3_1(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_3_1(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_3_1
    FH5_3_2(1+(j-1)*Th5/Ts:j*Th5/Ts) = cos(2*pi*f_set_5_3_2(j)*t(1+(j-1)*Th5/Ts:j*Th5/Ts)); % ��Ƶ�ź�5_3_2
end


%% ��Ƶ�ź�6��Ƶ�ʱ任��������20
f_set_6_1 = linspace(3.05,4,20)*10^6;
f_set_6_1 = f_set_6_1(randperm(length(f_set_6_1)));
f_set_6_1_1 = f_set_6_1(randperm(length(f_set_6_1)));
f_set_6_1_2 = f_set_6_1_1(randperm(length(f_set_6_1_1)));

for j = 1:Nu_6
    FH6_1(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_1(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_1
    FH6_1_1(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_1_1(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_1_1
    FH6_1_2(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_1_2(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_1_2
end

f_set_6_2 = linspace(2.05,3,20)*10^6;
f_set_6_2 = f_set_6_2(randperm(length(f_set_6_2)));
f_set_6_2_1 = f_set_6_2(randperm(length(f_set_6_2)));
f_set_6_2_2 = f_set_6_2_1(randperm(length(f_set_6_2_1)));

for j = 1:Nu_6
    FH6_2(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_2(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_2
    FH6_2_1(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_2_1(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_2_1
    FH6_2_2(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_2_2(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_2_2
end

f_set_6_3 = linspace(3.95,4.9,20)*10^6;
f_set_6_3 = f_set_6_3(randperm(length(f_set_6_3)));
f_set_6_3_1 = f_set_6_3(randperm(length(f_set_6_3)));
f_set_6_3_2 = f_set_6_3_1(randperm(length(f_set_6_3_1)));

for j = 1:Nu_6
    FH6_3(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_3(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_3
    FH6_3_1(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_3_1(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_3_1
    FH6_3_2(1+(j-1)*Th6/Ts:j*Th6/Ts) = cos(2*pi*f_set_6_3_2(j)*t(1+(j-1)*Th6/Ts:j*Th6/Ts)); % ��Ƶ�ź�6_3_2
end

%% ��Ƶ�ź�7��Ƶ�ʱ任��������16
f_set_7_1 = linspace(1.4,4.4,16)*10^6;
f_set_7_1 = f_set_7_1(randperm(length(f_set_7_1)));
f_set_7_1_1 = f_set_7_1(randperm(length(f_set_7_1)));
f_set_7_1_2 = f_set_7_1_1(randperm(length(f_set_7_1_1)));

for j = 1:Nu_7
    FH7_1(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_1(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_1
    FH7_1_1(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_1_1(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_1_1
    FH7_1_2(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_1_2(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_1_2
end

f_set_7_2 = linspace(0.4,3.4,16)*10^6;
f_set_7_2 = f_set_7_2(randperm(length(f_set_7_2)));
f_set_7_2_1 = f_set_7_2(randperm(length(f_set_7_2)));
f_set_7_2_2 = f_set_7_2_1(randperm(length(f_set_7_2_1)));

for j = 1:Nu_7
    FH7_2(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_2(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_2
    FH7_2_1(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_2_1(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_2_1
    FH7_2_2(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_2_2(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_2_2
end

f_set_7_3 = linspace(2.7,4.8,16)*10^6;
f_set_7_3 = f_set_7_3(randperm(length(f_set_7_3)));
f_set_7_3_1 = f_set_7_3(randperm(length(f_set_7_3)));
f_set_7_3_2 = f_set_7_3_1(randperm(length(f_set_7_3_1)));

for j = 1:Nu_7
    FH7_3(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_3(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_3
    FH7_3_1(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_3_1(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_3_1
    FH7_3_2(1+(j-1)*Th7/Ts:j*Th7/Ts) = cos(2*pi*f_set_7_3_2(j)*t(1+(j-1)*Th7/Ts:j*Th7/Ts)); % ��Ƶ�ź�7_3_2
end

%% ��Ƶ�ź�8��Ƶ�ʱ任��������25
f_set_8_1 = linspace(2.8,4.7,25)*10^6;
f_set_8_1 = f_set_8_1(randperm(length(f_set_8_1)));
f_set_8_1_1 = f_set_8_1(randperm(length(f_set_8_1)));
f_set_8_1_2 = f_set_8_1_1(randperm(length(f_set_8_1_1)));

for j = 1:Nu_8
    FH8_1(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_1(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_1
    FH8_1_1(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_1_1(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_1_1
    FH8_1_2(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_1_2(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_1_2
end

f_set_8_2 = linspace(1.35,3.25,25)*10^6;
f_set_8_2 = f_set_8_2(randperm(length(f_set_8_2)));
f_set_8_2_1 = f_set_8_2(randperm(length(f_set_8_2)));
f_set_8_2_2 = f_set_8_2_1(randperm(length(f_set_8_2_1)));

for j = 1:Nu_8
    FH8_2(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_2(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_2
    FH8_2_1(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_2_1(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_2_1
    FH8_2_2(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_2_2(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_2_2
end

f_set_8_3 = linspace(3.6,4.5,25)*10^6;
f_set_8_3 = f_set_8_3(randperm(length(f_set_8_3)));
f_set_8_3_1 = f_set_8_3(randperm(length(f_set_8_3)));
f_set_8_3_2 = f_set_8_3_1(randperm(length(f_set_8_3_1)));

for j = 1:Nu_8
    FH8_3(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_3(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_3
    FH8_3_1(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_3_1(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_3_1
    FH8_3_2(1+(j-1)*Th8/Ts:j*Th8/Ts) = cos(2*pi*f_set_8_3_2(j)*t(1+(j-1)*Th8/Ts:j*Th8/Ts)); % ��Ƶ�ź�8_3_2
end

%% ��Ƶ�ź�9��Ƶ�ʱ任��������32
f_set_9_1 = linspace(2.9,4.45,32)*10^6;
f_set_9_1 = f_set_9_1(randperm(length(f_set_9_1)));
f_set_9_1_1 = f_set_9_1(randperm(length(f_set_9_1)));
f_set_9_1_2 = f_set_9_1_1(randperm(length(f_set_9_1_1)));

for j = 1:Nu_9
    FH9_1(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_1(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_1
    FH9_1_1(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_1_1(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_1_1
    FH9_1_2(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_1_2(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_1_2
end

f_set_9_2 = linspace(3.3,4.85,32)*10^6;
f_set_9_2 = f_set_9_2(randperm(length(f_set_9_2)));
f_set_9_2_1 = f_set_9_2(randperm(length(f_set_9_2)));
f_set_9_2_2 = f_set_9_2_1(randperm(length(f_set_9_2_1)));

for j = 1:Nu_9
    FH9_2(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_2(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_2
    FH9_2_1(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_2_1(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_2_1
    FH9_2_2(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_2_2(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_2_2
end

f_set_9_3 = linspace(1.9,3.45,32)*10^6;
f_set_9_3 = f_set_9_3(randperm(length(f_set_9_3)));
f_set_9_3_1 = f_set_9_3(randperm(length(f_set_9_3)));
f_set_9_3_2 = f_set_9_3_1(randperm(length(f_set_9_3_1)));

for j = 1:Nu_9
    FH9_3(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_3(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_3
    FH9_3_1(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_3_1(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_3_1
    FH9_3_2(1+(j-1)*Th9/Ts:j*Th9/Ts) = cos(2*pi*f_set_9_3_2(j)*t(1+(j-1)*Th9/Ts:j*Th9/Ts)); % ��Ƶ�ź�9_3_2
end




% %% ��Ƶ�źż�1
 f1 = 3.136e6;       %��Ƶ�����ź�1���ز�Ƶ��
 f2 = 1.825e6;       %��Ƶ�����ź�2���ز�Ƶ��
 y1 =  sin(2 * pi * f1 * t);
 y2 =  cos(2 * pi * f2 * t);
% 
% %% ɨƵ�źż�1
 t1=0:0.0002:8-0.0002;%8��Ӧ8�����ڣ�0.0002Ϊ����
 f0=1500;%ɨƵ��ʼƵ��
 fe=2000;%ɨƵ��ֹƵ��
 saopin= chirp(mod(t1,1),f0,1,fe);%1�������ǵ�����ʱ��
% 
% %% ͻ���źż�1
% ftu = [0.3255 2.7555 2.2855 3.1255 4.9555 1.6555] * 10^6;
% ftu1 = 0.3255*10^6;
% ytu1 = sin(2 * pi * ftu1 * t);
% ftu2 = 2.7555 * 10^6;
% ytu2 = sin(2 * pi * ftu2 * t);
% ftu3 = 2.2855 * 10^6;
% ytu3 = cos(2 * pi * ftu3 * t);
% ftu4 = 3.4255 * 10^6;
% ytu4 = cos(2 * pi * ftu4 * t);
% ftu5 = 4.9555 * 10^6;
% ytu5 = sin(2 * pi * ftu5 * t);
% ftu6 = 1.6555 * 10^6;
% ytu6 = cos(2 * pi * ftu6 * t);
% ytu1(1000:length(ytu1)) = 0;
% ytu2(1:14000) = 0;
% ytu2(15000:length(ytu2)) = 0;
% ytu3(1:4000) = 0;
% ytu3(5000:length(ytu3)) = 0;
% ytu4(1:9000) = 0;
% ytu4(10000:length(ytu4)) = 0;
% ytu5(1:19000) = 0;
% ytu5(20000:length(ytu5)) = 0;
% ytu6(1:29000) = 0;
% ytu6(30000:length(ytu6)) = 0;
% ytu = ytu1 + ytu2 + ytu3 + ytu4 + ytu5 + ytu6;

% y1 = 0;
% y2 = 0;
% saopin = 0;
ytu = 0;

%% �ź����ݼ�
y_FH1_1 = y1 + y2 + FH1_1 + saopin + ytu;                           %�ŵ�����1
y_FH1_1_1 = y1 + y2 + FH1_1_1 + saopin + ytu;                       %�ŵ�����2
y_FH1_1_2 = y1 + y2 + FH1_1_2 + saopin + ytu;                       %�ŵ�����3

y_FH1_2 = y1 + y2 + FH1_2 + saopin + ytu;                           %�ŵ�����4
y_FH1_2_1 = y1 + y2 + FH1_2_1 + saopin + ytu;                       %�ŵ�����5
y_FH1_2_2 = y1 + y2 + FH1_2_2 + saopin + ytu;                       %�ŵ�����6

y_FH1_3 = y1 + y2 + FH1_3 + saopin + ytu;                           %�ŵ�����7
y_FH1_3_1 = y1 + y2 + FH1_3_1 + saopin + ytu;                       %�ŵ�����8
y_FH1_3_2 = y1 + y2 + FH1_3_2 + saopin + ytu;                       %�ŵ�����9

y_FH2_1 = y1 + y2 + FH2_1 + saopin + ytu;                           %�ŵ�����10
y_FH2_1_1 = y1 + y2 + FH2_1_1 + saopin + ytu;                       %�ŵ�����11
y_FH2_1_2 = y1 + y2 + FH2_1_2 + saopin + ytu;                       %�ŵ�����12

y_FH2_2 = y1 + y2 + FH2_2 + saopin + ytu;                           %�ŵ�����13
y_FH2_2_1 = y1 + y2 + FH2_2_1 + saopin + ytu;                       %�ŵ�����14
y_FH2_2_2 = y1 + y2 + FH2_2_2 + saopin + ytu;                       %�ŵ�����15

y_FH2_3 = y1 + y2 + FH2_3 + saopin + ytu;                           %�ŵ�����16
y_FH2_3_1 = y1 + y2 + FH2_3_1 + saopin + ytu;                       %�ŵ�����17
y_FH2_3_2 = y1 + y2 + FH2_3_2 + saopin + ytu;                       %�ŵ�����18

y_FH3_1 = y1 + y2 + FH3_1 + saopin + ytu;                           %�ŵ�����19
y_FH3_1_1 = y1 + y2 + FH3_1_1 + saopin + ytu;                       %�ŵ�����20
y_FH3_1_2 = y1 + y2 + FH3_1_2 + saopin + ytu;                       %�ŵ�����21

y_FH3_2 = y1 + y2 + FH3_2 + saopin + ytu;                           %�ŵ�����22
y_FH3_2_1 = y1 + y2 + FH3_2_1 + saopin + ytu;                       %�ŵ�����23
y_FH3_2_2 = y1 + y2 + FH3_2_2 + saopin + ytu;                       %�ŵ�����24

y_FH3_3 = y1 + y2 + FH3_3 + saopin + ytu;                           %�ŵ�����25
y_FH3_3_1 = y1 + y2 + FH3_3_1 + saopin + ytu;                       %�ŵ�����26
y_FH3_3_2 = y1 + y2 + FH3_3_2 + saopin + ytu;                       %�ŵ�����27

y_FH4_1 = y1 + y2 + FH4_1 + saopin + ytu;                           %�ŵ�����28
y_FH4_1_1 = y1 + y2 + FH4_1_1 + saopin + ytu;                       %�ŵ�����29
y_FH4_1_2 = y1 + y2 + FH4_1_2 + saopin + ytu;                       %�ŵ�����30

y_FH4_2 = y1 + y2 + FH4_2 + saopin + ytu;                           %�ŵ�����31
y_FH4_2_1 = y1 + y2 + FH4_2_1 + saopin + ytu;                       %�ŵ�����32
y_FH4_2_2 = y1 + y2 + FH4_2_2 + saopin + ytu;                       %�ŵ�����33

y_FH4_3 = y1 + y2 + FH4_3 + saopin + ytu;                           %�ŵ�����34
y_FH4_3_1 = y1 + y2 + FH4_3_1 + saopin + ytu;                       %�ŵ�����35
y_FH4_3_2 = y1 + y2 + FH4_3_2 + saopin + ytu;                       %�ŵ�����36

y_FH5_1 = y1 + y2 + FH5_1 + saopin + ytu;                           %�ŵ�����37
y_FH5_1_1 = y1 + y2 + FH5_1_1 + saopin + ytu;                       %�ŵ�����38
y_FH5_1_2 = y1 + y2 + FH5_1_2 + saopin + ytu;                       %�ŵ�����39

y_FH5_2 = y1 + y2 + FH5_2 + saopin + ytu;                           %�ŵ�����40
y_FH5_2_1 = y1 + y2 + FH5_2_1 + saopin + ytu;                       %�ŵ�����41
y_FH5_2_2 = y1 + y2 + FH5_2_2 + saopin + ytu;                       %�ŵ�����42

y_FH5_3 = y1 + y2 + FH5_3 + saopin + ytu;                           %�ŵ�����43
y_FH5_3_1 = y1 + y2 + FH5_3_1 + saopin + ytu;                       %�ŵ�����44
y_FH5_3_2 = y1 + y2 + FH5_3_2 + saopin + ytu;                       %�ŵ�����45

y_FH6_1 = y1 + y2 + FH6_1 + saopin + ytu;                           %�ŵ�����46
y_FH6_1_1 = y1 + y2 + FH6_1_1 + saopin + ytu;                       %�ŵ�����47
y_FH6_1_2 = y1 + y2 + FH6_1_2 + saopin + ytu;                       %�ŵ�����48

y_FH6_2 = y1 + y2 + FH6_2 + saopin + ytu;                           %�ŵ�����49
y_FH6_2_1 = y1 + y2 + FH6_2_1 + saopin + ytu;                       %�ŵ�����50
y_FH6_2_2 = y1 + y2 + FH6_2_2 + saopin + ytu;                       %�ŵ�����51

y_FH6_3 = y1 + y2 + FH6_3 + saopin + ytu;                           %�ŵ�����52
y_FH6_3_1 = y1 + y2 + FH6_3_1 + saopin + ytu;                       %�ŵ�����53
y_FH6_3_2 = y1 + y2 + FH6_3_2 + saopin + ytu;                       %�ŵ�����54

y_FH7_1 = y1 + y2 + FH7_1 + saopin + ytu;                           %�ŵ�����55
y_FH7_1_1 = y1 + y2 + FH7_1_1 + saopin + ytu;                       %�ŵ�����56
y_FH7_1_2 = y1 + y2 + FH7_1_2 + saopin + ytu;                       %�ŵ�����57

y_FH7_2 = y1 + y2 + FH7_2 + saopin + ytu;                           %�ŵ�����58
y_FH7_2_1 = y1 + y2 + FH7_2_1 + saopin + ytu;                       %�ŵ�����59
y_FH7_2_2 = y1 + y2 + FH7_2_2 + saopin + ytu;                       %�ŵ�����60

y_FH7_3 = y1 + y2 + FH7_3 + saopin + ytu;                           %�ŵ�����61
y_FH7_3_1 = y1 + y2 + FH7_3_1 + saopin + ytu;                       %�ŵ�����62
y_FH7_3_2 = y1 + y2 + FH7_3_2 + saopin + ytu;                       %�ŵ�����63

y_FH8_1 = y1 + y2 + FH8_1 + saopin + ytu;                           %�ŵ�����64
y_FH8_1_1 = y1 + y2 + FH8_1_1 + saopin + ytu;                       %�ŵ�����65
y_FH8_1_2 = y1 + y2 + FH8_1_2 + saopin + ytu;                       %�ŵ�����66

y_FH8_2 = y1 + y2 + FH8_2 + saopin + ytu;                           %�ŵ�����67
y_FH8_2_1 = y1 + y2 + FH8_2_1 + saopin + ytu;                       %�ŵ�����68
y_FH8_2_2 = y1 + y2 + FH8_2_2 + saopin + ytu;                       %�ŵ�����69

y_FH8_3 = y1 + y2 + FH8_3 + saopin + ytu;                           %�ŵ�����70
y_FH8_3_1 = y1 + y2 + FH8_3_1 + saopin + ytu;                       %�ŵ�����71
y_FH8_3_2 = y1 + y2 + FH8_3_2 + saopin + ytu;                       %�ŵ�����72

y_FH9_1 = y1 + y2 + FH9_1 + saopin + ytu;                           %�ŵ�����73
y_FH9_1_1 = y1 + y2 + FH9_1_1 + saopin + ytu;                       %�ŵ�����74
y_FH9_1_2 = y1 + y2 + FH9_1_2 + saopin + ytu;                       %�ŵ�����75

y_FH9_2 = y1 + y2 + FH9_2 + saopin + ytu;                           %�ŵ�����76
y_FH9_2_1 = y1 + y2 + FH9_2_1 + saopin + ytu;                       %�ŵ�����77
y_FH9_2_2 = y1 + y2 + FH9_2_2 + saopin + ytu;                       %�ŵ�����78

y_FH9_3 = y1 + y2 + FH9_3 + saopin + ytu;                           %�ŵ�����79
y_FH9_3_1 = y1 + y2 + FH9_3_1 + saopin + ytu;                       %�ŵ�����80
y_FH9_3_2 = y1 + y2 + FH9_3_2 + saopin + ytu;                       %�ŵ�����81

%% FH1ϵ����FH2��FH3...FH9�ĵ�һ�����
y_FH1_1_FH2_1 = y1 + y2 + FH1_1 + FH2_1 + saopin + ytu;             %�ŵ�����82
y_FH1_1_FH3_1 = y1 + y2 + FH1_1 + FH3_1 + saopin + ytu;             %�ŵ�����83
y_FH1_1_FH4_1 = y1 + y2 + FH1_1 + FH4_1 + saopin + ytu;             %�ŵ�����84
y_FH1_1_FH5_1 = y1 + y2 + FH1_1 + FH5_1 + saopin + ytu;             %�ŵ�����85
y_FH1_1_FH6_1 = y1 + y2 + FH1_1 + FH6_1 + saopin + ytu;             %�ŵ�����86
y_FH1_1_FH7_1 = y1 + y2 + FH1_1 + FH7_1 + saopin + ytu;             %�ŵ�����87
y_FH1_1_FH8_1 = y1 + y2 + FH1_1 + FH8_1 + saopin + ytu;             %�ŵ�����88
y_FH1_1_FH9_1 = y1 + y2 + FH1_1 + FH9_1 + saopin + ytu;             %�ŵ�����89

y_FH1_1_1_FH2_1 = y1 + y2 + FH1_1_1 + FH2_1 + saopin + ytu;         %�ŵ�����90
y_FH1_1_1_FH3_1 = y1 + y2 + FH1_1_1 + FH3_1 + saopin + ytu;         %�ŵ�����91
y_FH1_1_1_FH4_1 = y1 + y2 + FH1_1_1 + FH4_1 + saopin + ytu;         %�ŵ�����92
y_FH1_1_1_FH5_1 = y1 + y2 + FH1_1_1 + FH5_1 + saopin + ytu;         %�ŵ�����93
y_FH1_1_1_FH6_1 = y1 + y2 + FH1_1_1 + FH6_1 + saopin + ytu;         %�ŵ�����94
y_FH1_1_1_FH7_1 = y1 + y2 + FH1_1_1 + FH7_1 + saopin + ytu;         %�ŵ�����95
y_FH1_1_1_FH8_1 = y1 + y2 + FH1_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����96
y_FH1_1_1_FH9_1 = y1 + y2 + FH1_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����97

y_FH1_1_2_FH2_1 = y1 + y2 + FH1_1_2 + FH2_1 + saopin + ytu;         %�ŵ�����98
y_FH1_1_2_FH3_1 = y1 + y2 + FH1_1_2 + FH3_1 + saopin + ytu;         %�ŵ�����99
y_FH1_1_2_FH4_1 = y1 + y2 + FH1_1_2 + FH4_1 + saopin + ytu;         %�ŵ�����102
y_FH1_1_2_FH5_1 = y1 + y2 + FH1_1_2 + FH5_1 + saopin + ytu;         %�ŵ�����103
y_FH1_1_2_FH6_1 = y1 + y2 + FH1_1_2 + FH6_1 + saopin + ytu;         %�ŵ�����104
y_FH1_1_2_FH7_1 = y1 + y2 + FH1_1_2 + FH7_1 + saopin + ytu;         %�ŵ�����105
y_FH1_1_2_FH8_1 = y1 + y2 + FH1_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����106
y_FH1_1_2_FH9_1 = y1 + y2 + FH1_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����107

y_FH1_2_FH2_1 = y1 + y2 + FH1_2 + FH2_1 + saopin + ytu;             %�ŵ�����108
y_FH1_2_FH3_1 = y1 + y2 + FH1_2 + FH3_1 + saopin + ytu;             %�ŵ�����109
y_FH1_2_FH4_1 = y1 + y2 + FH1_2 + FH4_1 + saopin + ytu;             %�ŵ�����110
y_FH1_2_FH5_1 = y1 + y2 + FH1_2 + FH5_1 + saopin + ytu;             %�ŵ�����111
y_FH1_2_FH6_1 = y1 + y2 + FH1_2 + FH6_1 + saopin + ytu;             %�ŵ�����112
y_FH1_2_FH7_1 = y1 + y2 + FH1_2 + FH7_1 + saopin + ytu;             %�ŵ�����113
y_FH1_2_FH8_1 = y1 + y2 + FH1_2 + FH8_1 + saopin + ytu;             %�ŵ�����114
y_FH1_2_FH9_1 = y1 + y2 + FH1_2 + FH9_1 + saopin + ytu;             %�ŵ�����115

y_FH1_2_1_FH2_1 = y1 + y2 + FH1_2_1 + FH2_1 + saopin + ytu;         %�ŵ�����116
y_FH1_2_1_FH3_1 = y1 + y2 + FH1_2_1 + FH3_1 + saopin + ytu;         %�ŵ�����117
y_FH1_2_1_FH4_1 = y1 + y2 + FH1_2_1 + FH4_1 + saopin + ytu;         %�ŵ�����118
y_FH1_2_1_FH5_1 = y1 + y2 + FH1_2_1 + FH5_1 + saopin + ytu;         %�ŵ�����119
y_FH1_2_1_FH6_1 = y1 + y2 + FH1_2_1 + FH6_1 + saopin + ytu;         %�ŵ�����120
y_FH1_2_1_FH7_1 = y1 + y2 + FH1_2_1 + FH7_1 + saopin + ytu;         %�ŵ�����121
y_FH1_2_1_FH8_1 = y1 + y2 + FH1_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����122
y_FH1_2_1_FH9_1 = y1 + y2 + FH1_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����123

y_FH1_2_2_FH2_1 = y1 + y2 + FH1_2_2 + FH2_1 + saopin + ytu;         %�ŵ�����124
y_FH1_2_2_FH3_1 = y1 + y2 + FH1_2_2 + FH3_1 + saopin + ytu;         %�ŵ�����125
y_FH1_2_2_FH4_1 = y1 + y2 + FH1_2_2 + FH4_1 + saopin + ytu;         %�ŵ�����126
y_FH1_2_2_FH5_1 = y1 + y2 + FH1_2_2 + FH5_1 + saopin + ytu;         %�ŵ�����127
y_FH1_2_2_FH6_1 = y1 + y2 + FH1_2_2 + FH6_1 + saopin + ytu;         %�ŵ�����128
y_FH1_2_2_FH7_1 = y1 + y2 + FH1_2_2 + FH7_1 + saopin + ytu;         %�ŵ�����129
y_FH1_2_2_FH8_1 = y1 + y2 + FH1_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����130
y_FH1_2_2_FH9_1 = y1 + y2 + FH1_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����131

y_FH1_3_FH2_1 = y1 + y2 + FH1_3 + FH2_1 + saopin + ytu;             %�ŵ�����132
y_FH1_3_FH3_1 = y1 + y2 + FH1_3 + FH3_1 + saopin + ytu;             %�ŵ�����133
y_FH1_3_FH4_1 = y1 + y2 + FH1_3 + FH4_1 + saopin + ytu;             %�ŵ�����134
y_FH1_3_FH5_1 = y1 + y2 + FH1_3 + FH5_1 + saopin + ytu;             %�ŵ�����135
y_FH1_3_FH6_1 = y1 + y2 + FH1_3 + FH6_1 + saopin + ytu;             %�ŵ�����136
y_FH1_3_FH7_1 = y1 + y2 + FH1_3 + FH7_1 + saopin + ytu;             %�ŵ�����137
y_FH1_3_FH8_1 = y1 + y2 + FH1_3 + FH8_1 + saopin + ytu;             %�ŵ�����138
y_FH1_3_FH9_1 = y1 + y2 + FH1_3 + FH9_1 + saopin + ytu;             %�ŵ�����139

y_FH1_3_1_FH2_1 = y1 + y2 + FH1_3_1 + FH2_1 + saopin + ytu;         %�ŵ�����140
y_FH1_3_1_FH3_1 = y1 + y2 + FH1_3_1 + FH3_1 + saopin + ytu;         %�ŵ�����141
y_FH1_3_1_FH4_1 = y1 + y2 + FH1_3_1 + FH4_1 + saopin + ytu;         %�ŵ�����142
y_FH1_3_1_FH5_1 = y1 + y2 + FH1_3_1 + FH5_1 + saopin + ytu;         %�ŵ�����143
y_FH1_3_1_FH6_1 = y1 + y2 + FH1_3_1 + FH6_1 + saopin + ytu;         %�ŵ�����144
y_FH1_3_1_FH7_1 = y1 + y2 + FH1_3_1 + FH7_1 + saopin + ytu;         %�ŵ�����145
y_FH1_3_1_FH8_1 = y1 + y2 + FH1_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����146
y_FH1_3_1_FH9_1 = y1 + y2 + FH1_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����147

y_FH1_3_2_FH2_1 = y1 + y2 + FH1_3_2 + FH2_1 + saopin + ytu;         %�ŵ�����148
y_FH1_3_2_FH3_1 = y1 + y2 + FH1_3_2 + FH3_1 + saopin + ytu;         %�ŵ�����149
y_FH1_3_2_FH4_1 = y1 + y2 + FH1_3_2 + FH4_1 + saopin + ytu;         %�ŵ�����150
y_FH1_3_2_FH5_1 = y1 + y2 + FH1_3_2 + FH5_1 + saopin + ytu;         %�ŵ�����151
y_FH1_3_2_FH6_1 = y1 + y2 + FH1_3_2 + FH6_1 + saopin + ytu;         %�ŵ�����152
y_FH1_3_2_FH7_1 = y1 + y2 + FH1_3_2 + FH7_1 + saopin + ytu;         %�ŵ�����153
y_FH1_3_2_FH8_1 = y1 + y2 + FH1_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����154
y_FH1_3_2_FH9_1 = y1 + y2 + FH1_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����155

%% FH2ϵ����FH3...FH9�����
y_FH2_1_FH3_1 = y1 + y2 + FH2_1 + FH3_1 + saopin + ytu;             %�ŵ�����156
y_FH2_1_FH4_1 = y1 + y2 + FH2_1 + FH4_1 + saopin + ytu;             %�ŵ�����157
y_FH2_1_FH5_1 = y1 + y2 + FH2_1 + FH5_1 + saopin + ytu;             %�ŵ�����158
y_FH2_1_FH6_1 = y1 + y2 + FH2_1 + FH6_1 + saopin + ytu;             %�ŵ�����159
y_FH2_1_FH7_1 = y1 + y2 + FH2_1 + FH7_1 + saopin + ytu;             %�ŵ�����160
y_FH2_1_FH8_1 = y1 + y2 + FH2_1 + FH8_1 + saopin + ytu;             %�ŵ�����161
y_FH2_1_FH9_1 = y1 + y2 + FH2_1 + FH9_1 + saopin + ytu;             %�ŵ�����162

y_FH2_1_1_FH3_1 = y1 + y2 + FH2_1_1 + FH3_1 + saopin + ytu;         %�ŵ�����163
y_FH2_1_1_FH4_1 = y1 + y2 + FH2_1_1 + FH4_1 + saopin + ytu;         %�ŵ�����164
y_FH2_1_1_FH5_1 = y1 + y2 + FH2_1_1 + FH5_1 + saopin + ytu;         %�ŵ�����165
y_FH2_1_1_FH6_1 = y1 + y2 + FH2_1_1 + FH6_1 + saopin + ytu;         %�ŵ�����166
y_FH2_1_1_FH7_1 = y1 + y2 + FH2_1_1 + FH7_1 + saopin + ytu;         %�ŵ�����167
y_FH2_1_1_FH8_1 = y1 + y2 + FH2_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����168
y_FH2_1_1_FH9_1 = y1 + y2 + FH2_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����169

y_FH2_1_2_FH3_1 = y1 + y2 + FH2_1_2 + FH3_1 + saopin + ytu;         %�ŵ�����170
y_FH2_1_2_FH4_1 = y1 + y2 + FH2_1_2 + FH4_1 + saopin + ytu;         %�ŵ�����171
y_FH2_1_2_FH5_1 = y1 + y2 + FH2_1_2 + FH5_1 + saopin + ytu;         %�ŵ�����172
y_FH2_1_2_FH6_1 = y1 + y2 + FH2_1_2 + FH6_1 + saopin + ytu;         %�ŵ�����173
y_FH2_1_2_FH7_1 = y1 + y2 + FH2_1_2 + FH7_1 + saopin + ytu;         %�ŵ�����174
y_FH2_1_2_FH8_1 = y1 + y2 + FH2_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����175
y_FH2_1_2_FH9_1 = y1 + y2 + FH2_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����176

y_FH2_2_FH3_1 = y1 + y2 + FH2_2 + FH3_1 + saopin + ytu;             %�ŵ�����177
y_FH2_2_FH4_1 = y1 + y2 + FH2_2 + FH4_1 + saopin + ytu;             %�ŵ�����178
y_FH2_2_FH5_1 = y1 + y2 + FH2_2 + FH5_1 + saopin + ytu;             %�ŵ�����179
y_FH2_2_FH6_1 = y1 + y2 + FH2_2 + FH6_1 + saopin + ytu;             %�ŵ�����180
y_FH2_2_FH7_1 = y1 + y2 + FH2_2 + FH7_1 + saopin + ytu;             %�ŵ�����181
y_FH2_2_FH8_1 = y1 + y2 + FH2_2 + FH8_1 + saopin + ytu;             %�ŵ�����182
y_FH2_2_FH9_1 = y1 + y2 + FH2_2 + FH9_1 + saopin + ytu;             %�ŵ�����183

y_FH2_2_1_FH3_1 = y1 + y2 + FH2_2_1 + FH3_1 + saopin + ytu;         %�ŵ�����184
y_FH2_2_1_FH4_1 = y1 + y2 + FH2_2_1 + FH4_1 + saopin + ytu;         %�ŵ�����185
y_FH2_2_1_FH5_1 = y1 + y2 + FH2_2_1 + FH5_1 + saopin + ytu;         %�ŵ�����186
y_FH2_2_1_FH6_1 = y1 + y2 + FH2_2_1 + FH6_1 + saopin + ytu;         %�ŵ�����187
y_FH2_2_1_FH7_1 = y1 + y2 + FH2_2_1 + FH7_1 + saopin + ytu;         %�ŵ�����188
y_FH2_2_1_FH8_1 = y1 + y2 + FH2_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����189
y_FH2_2_1_FH9_1 = y1 + y2 + FH2_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����190

y_FH2_2_2_FH3_1 = y1 + y2 + FH2_2_2 + FH3_1 + saopin + ytu;         %�ŵ�����191
y_FH2_2_2_FH4_1 = y1 + y2 + FH2_2_2 + FH4_1 + saopin + ytu;         %�ŵ�����192
y_FH2_2_2_FH5_1 = y1 + y2 + FH2_2_2 + FH5_1 + saopin + ytu;         %�ŵ�����192
y_FH2_2_2_FH6_1 = y1 + y2 + FH2_2_2 + FH6_1 + saopin + ytu;         %�ŵ�����193
y_FH2_2_2_FH7_1 = y1 + y2 + FH2_2_2 + FH7_1 + saopin + ytu;         %�ŵ�����194
y_FH2_2_2_FH8_1 = y1 + y2 + FH2_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����195
y_FH2_2_2_FH9_1 = y1 + y2 + FH2_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����196

y_FH2_3_FH3_1 = y1 + y2 + FH2_3 + FH3_1 + saopin + ytu;             %�ŵ�����197
y_FH2_3_FH4_1 = y1 + y2 + FH2_3 + FH4_1 + saopin + ytu;             %�ŵ�����198
y_FH2_3_FH5_1 = y1 + y2 + FH2_3 + FH5_1 + saopin + ytu;             %�ŵ�����199
y_FH2_3_FH6_1 = y1 + y2 + FH2_3 + FH6_1 + saopin + ytu;             %�ŵ�����200
y_FH2_3_FH7_1 = y1 + y2 + FH2_3 + FH7_1 + saopin + ytu;             %�ŵ�����201
y_FH2_3_FH8_1 = y1 + y2 + FH2_3 + FH8_1 + saopin + ytu;             %�ŵ�����202
y_FH2_3_FH9_1 = y1 + y2 + FH2_3 + FH9_1 + saopin + ytu;             %�ŵ�����203

y_FH2_3_1_FH3_1 = y1 + y2 + FH2_3_1 + FH3_1 + saopin + ytu;         %�ŵ�����204
y_FH2_3_1_FH4_1 = y1 + y2 + FH2_3_1 + FH4_1 + saopin + ytu;         %�ŵ�����205
y_FH2_3_1_FH5_1 = y1 + y2 + FH2_3_1 + FH5_1 + saopin + ytu;         %�ŵ�����206
y_FH2_3_1_FH6_1 = y1 + y2 + FH2_3_1 + FH6_1 + saopin + ytu;         %�ŵ�����207
y_FH2_3_1_FH7_1 = y1 + y2 + FH2_3_1 + FH7_1 + saopin + ytu;         %�ŵ�����208
y_FH2_3_1_FH8_1 = y1 + y2 + FH2_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����209
y_FH2_3_1_FH9_1 = y1 + y2 + FH2_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����210

y_FH2_3_2_FH3_1 = y1 + y2 + FH2_3_2 + FH3_1 + saopin + ytu;         %�ŵ�����211
y_FH2_3_2_FH4_1 = y1 + y2 + FH2_3_2 + FH4_1 + saopin + ytu;         %�ŵ�����212
y_FH2_3_2_FH5_1 = y1 + y2 + FH2_3_2 + FH5_1 + saopin + ytu;         %�ŵ�����212
y_FH2_3_2_FH6_1 = y1 + y2 + FH2_3_2 + FH6_1 + saopin + ytu;         %�ŵ�����213
y_FH2_3_2_FH7_1 = y1 + y2 + FH2_3_2 + FH7_1 + saopin + ytu;         %�ŵ�����214
y_FH2_3_2_FH8_1 = y1 + y2 + FH2_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����215
y_FH2_3_2_FH9_1 = y1 + y2 + FH2_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����216

%% FH3ϵ����FH4...FH9�����
y_FH3_1_FH4_1 = y1 + y2 + FH3_1 + FH4_1 + saopin + ytu;             %�ŵ�����217
y_FH3_1_FH5_1 = y1 + y2 + FH3_1 + FH5_1 + saopin + ytu;             %�ŵ�����218
y_FH3_1_FH6_1 = y1 + y2 + FH3_1 + FH6_1 + saopin + ytu;             %�ŵ�����219
y_FH3_1_FH7_1 = y1 + y2 + FH3_1 + FH7_1 + saopin + ytu;             %�ŵ�����220
y_FH3_1_FH8_1 = y1 + y2 + FH3_1 + FH8_1 + saopin + ytu;             %�ŵ�����221
y_FH3_1_FH9_1 = y1 + y2 + FH3_1 + FH9_1 + saopin + ytu;             %�ŵ�����222

y_FH3_1_1_FH4_1 = y1 + y2 + FH3_1_1 + FH4_1 + saopin + ytu;         %�ŵ�����223
y_FH3_1_1_FH5_1 = y1 + y2 + FH3_1_1 + FH5_1 + saopin + ytu;         %�ŵ�����224
y_FH3_1_1_FH6_1 = y1 + y2 + FH3_1_1 + FH6_1 + saopin + ytu;         %�ŵ�����225
y_FH3_1_1_FH7_1 = y1 + y2 + FH3_1_1 + FH7_1 + saopin + ytu;         %�ŵ�����226
y_FH3_1_1_FH8_1 = y1 + y2 + FH3_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����227
y_FH3_1_1_FH9_1 = y1 + y2 + FH3_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����228

y_FH3_1_2_FH4_1 = y1 + y2 + FH3_1_2 + FH4_1 + saopin + ytu;         %�ŵ�����229
y_FH3_1_2_FH5_1 = y1 + y2 + FH3_1_2 + FH5_1 + saopin + ytu;         %�ŵ�����230
y_FH3_1_2_FH6_1 = y1 + y2 + FH3_1_2 + FH6_1 + saopin + ytu;         %�ŵ�����231
y_FH3_1_2_FH7_1 = y1 + y2 + FH3_1_2 + FH7_1 + saopin + ytu;         %�ŵ�����232
y_FH3_1_2_FH8_1 = y1 + y2 + FH3_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����233
y_FH3_1_2_FH9_1 = y1 + y2 + FH3_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����234

y_FH3_2_FH4_1 = y1 + y2 + FH3_2 + FH4_1 + saopin + ytu;             %�ŵ�����235
y_FH3_2_FH5_1 = y1 + y2 + FH3_2 + FH5_1 + saopin + ytu;             %�ŵ�����236
y_FH3_2_FH6_1 = y1 + y2 + FH3_2 + FH6_1 + saopin + ytu;             %�ŵ�����237
y_FH3_2_FH7_1 = y1 + y2 + FH3_2 + FH7_1 + saopin + ytu;             %�ŵ�����238
y_FH3_2_FH8_1 = y1 + y2 + FH3_2 + FH8_1 + saopin + ytu;             %�ŵ�����239
y_FH3_2_FH9_1 = y1 + y2 + FH3_2 + FH9_1 + saopin + ytu;             %�ŵ�����240

y_FH3_2_1_FH4_1 = y1 + y2 + FH3_2_1 + FH4_1 + saopin + ytu;         %�ŵ�����241
y_FH3_2_1_FH5_1 = y1 + y2 + FH3_2_1 + FH5_1 + saopin + ytu;         %�ŵ�����242
y_FH3_2_1_FH6_1 = y1 + y2 + FH3_2_1 + FH6_1 + saopin + ytu;         %�ŵ�����243
y_FH3_2_1_FH7_1 = y1 + y2 + FH3_2_1 + FH7_1 + saopin + ytu;         %�ŵ�����244
y_FH3_2_1_FH8_1 = y1 + y2 + FH3_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����245
y_FH3_2_1_FH9_1 = y1 + y2 + FH3_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����246

y_FH3_2_2_FH4_1 = y1 + y2 + FH3_2_2 + FH4_1 + saopin + ytu;         %�ŵ�����247
y_FH3_2_2_FH5_1 = y1 + y2 + FH3_2_2 + FH5_1 + saopin + ytu;         %�ŵ�����248
y_FH3_2_2_FH6_1 = y1 + y2 + FH3_2_2 + FH6_1 + saopin + ytu;         %�ŵ�����249
y_FH3_2_2_FH7_1 = y1 + y2 + FH3_2_2 + FH7_1 + saopin + ytu;         %�ŵ�����250
y_FH3_2_2_FH8_1 = y1 + y2 + FH3_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����251
y_FH3_2_2_FH9_1 = y1 + y2 + FH3_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����252

y_FH3_3_FH4_1 = y1 + y2 + FH3_3 + FH4_1 + saopin + ytu;             %�ŵ�����253
y_FH3_3_FH5_1 = y1 + y2 + FH3_3 + FH5_1 + saopin + ytu;             %�ŵ�����254
y_FH3_3_FH6_1 = y1 + y2 + FH3_3 + FH6_1 + saopin + ytu;             %�ŵ�����255
y_FH3_3_FH7_1 = y1 + y2 + FH3_3 + FH7_1 + saopin + ytu;             %�ŵ�����256
y_FH3_3_FH8_1 = y1 + y2 + FH3_3 + FH8_1 + saopin + ytu;             %�ŵ�����257
y_FH3_3_FH9_1 = y1 + y2 + FH3_3 + FH9_1 + saopin + ytu;             %�ŵ�����258

y_FH3_3_1_FH4_1 = y1 + y2 + FH3_3_1 + FH4_1 + saopin + ytu;         %�ŵ�����259
y_FH3_3_1_FH5_1 = y1 + y2 + FH3_3_1 + FH5_1 + saopin + ytu;         %�ŵ�����260
y_FH3_3_1_FH6_1 = y1 + y2 + FH3_3_1 + FH6_1 + saopin + ytu;         %�ŵ�����261
y_FH3_3_1_FH7_1 = y1 + y2 + FH3_3_1 + FH7_1 + saopin + ytu;         %�ŵ�����262
y_FH3_3_1_FH8_1 = y1 + y2 + FH3_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����263
y_FH3_3_1_FH9_1 = y1 + y2 + FH3_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����264

y_FH3_3_2_FH4_1 = y1 + y2 + FH3_3_2 + FH4_1 + saopin + ytu;         %�ŵ�����265
y_FH3_3_2_FH5_1 = y1 + y2 + FH3_3_2 + FH5_1 + saopin + ytu;         %�ŵ�����266
y_FH3_3_2_FH6_1 = y1 + y2 + FH3_3_2 + FH6_1 + saopin + ytu;         %�ŵ�����267
y_FH3_3_2_FH7_1 = y1 + y2 + FH3_3_2 + FH7_1 + saopin + ytu;         %�ŵ�����268
y_FH3_3_2_FH8_1 = y1 + y2 + FH3_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����269
y_FH3_3_2_FH9_1 = y1 + y2 + FH3_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����270

%% FH4ϵ����FH5...FH9�����
y_FH4_1_FH5_1 = y1 + y2 + FH4_1 + FH5_1 + saopin + ytu;             %�ŵ�����272
y_FH4_1_FH6_1 = y1 + y2 + FH4_1 + FH6_1 + saopin + ytu;             %�ŵ�����273
y_FH4_1_FH7_1 = y1 + y2 + FH4_1 + FH7_1 + saopin + ytu;             %�ŵ�����274
y_FH4_1_FH8_1 = y1 + y2 + FH4_1 + FH8_1 + saopin + ytu;             %�ŵ�����275
y_FH4_1_FH9_1 = y1 + y2 + FH4_1 + FH9_1 + saopin + ytu;             %�ŵ�����276

y_FH4_1_1_FH5_1 = y1 + y2 + FH4_1_1 + FH5_1 + saopin + ytu;         %�ŵ�����277
y_FH4_1_1_FH6_1 = y1 + y2 + FH4_1_1 + FH6_1 + saopin + ytu;         %�ŵ�����278
y_FH4_1_1_FH7_1 = y1 + y2 + FH4_1_1 + FH7_1 + saopin + ytu;         %�ŵ�����279
y_FH4_1_1_FH8_1 = y1 + y2 + FH4_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����280
y_FH4_1_1_FH9_1 = y1 + y2 + FH4_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����281

y_FH4_1_2_FH5_1 = y1 + y2 + FH4_1_2 + FH5_1 + saopin + ytu;         %�ŵ�����282
y_FH4_1_2_FH6_1 = y1 + y2 + FH4_1_2 + FH6_1 + saopin + ytu;         %�ŵ�����283
y_FH4_1_2_FH7_1 = y1 + y2 + FH4_1_2 + FH7_1 + saopin + ytu;         %�ŵ�����284
y_FH4_1_2_FH8_1 = y1 + y2 + FH4_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����285
y_FH4_1_2_FH9_1 = y1 + y2 + FH4_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����286

y_FH4_2_FH5_1 = y1 + y2 + FH4_2 + FH5_1 + saopin + ytu;             %�ŵ�����287
y_FH4_2_FH6_1 = y1 + y2 + FH4_2 + FH6_1 + saopin + ytu;             %�ŵ�����288
y_FH4_2_FH7_1 = y1 + y2 + FH4_2 + FH7_1 + saopin + ytu;             %�ŵ�����289
y_FH4_2_FH8_1 = y1 + y2 + FH4_2 + FH8_1 + saopin + ytu;             %�ŵ�����290
y_FH4_2_FH9_1 = y1 + y2 + FH4_2 + FH9_1 + saopin + ytu;             %�ŵ�����291

y_FH4_2_1_FH5_1 = y1 + y2 + FH4_2_1 + FH5_1 + saopin + ytu;         %�ŵ�����292
y_FH4_2_1_FH6_1 = y1 + y2 + FH4_2_1 + FH6_1 + saopin + ytu;         %�ŵ�����293
y_FH4_2_1_FH7_1 = y1 + y2 + FH4_2_1 + FH7_1 + saopin + ytu;         %�ŵ�����294
y_FH4_2_1_FH8_1 = y1 + y2 + FH4_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����295
y_FH4_2_1_FH9_1 = y1 + y2 + FH4_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����296

y_FH4_2_2_FH5_1 = y1 + y2 + FH4_2_2 + FH5_1 + saopin + ytu;         %�ŵ�����297
y_FH4_2_2_FH6_1 = y1 + y2 + FH4_2_2 + FH6_1 + saopin + ytu;         %�ŵ�����298
y_FH4_2_2_FH7_1 = y1 + y2 + FH4_2_2 + FH7_1 + saopin + ytu;         %�ŵ�����299
y_FH4_2_2_FH8_1 = y1 + y2 + FH4_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����300
y_FH4_2_2_FH9_1 = y1 + y2 + FH4_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����301

y_FH4_3_FH5_1 = y1 + y2 + FH4_3 + FH5_1 + saopin + ytu;             %�ŵ�����302
y_FH4_3_FH6_1 = y1 + y2 + FH4_3 + FH6_1 + saopin + ytu;             %�ŵ�����303
y_FH4_3_FH7_1 = y1 + y2 + FH4_3 + FH7_1 + saopin + ytu;             %�ŵ�����304
y_FH4_3_FH8_1 = y1 + y2 + FH4_3 + FH8_1 + saopin + ytu;             %�ŵ�����305
y_FH4_3_FH9_1 = y1 + y2 + FH4_3 + FH9_1 + saopin + ytu;             %�ŵ�����306

y_FH4_3_1_FH5_1 = y1 + y2 + FH4_3_1 + FH5_1 + saopin + ytu;         %�ŵ�����307
y_FH4_3_1_FH6_1 = y1 + y2 + FH4_3_1 + FH6_1 + saopin + ytu;         %�ŵ�����308
y_FH4_3_1_FH7_1 = y1 + y2 + FH4_3_1 + FH7_1 + saopin + ytu;         %�ŵ�����309
y_FH4_3_1_FH8_1 = y1 + y2 + FH4_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����310
y_FH4_3_1_FH9_1 = y1 + y2 + FH4_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����311

y_FH4_3_2_FH5_1 = y1 + y2 + FH4_3_2 + FH5_1 + saopin + ytu;         %�ŵ�����312
y_FH4_3_2_FH6_1 = y1 + y2 + FH4_3_2 + FH6_1 + saopin + ytu;         %�ŵ�����313
y_FH4_3_2_FH7_1 = y1 + y2 + FH4_3_2 + FH7_1 + saopin + ytu;         %�ŵ�����314
y_FH4_3_2_FH8_1 = y1 + y2 + FH4_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����315
y_FH4_3_2_FH9_1 = y1 + y2 + FH4_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����316

%% FH5ϵ����FH6...FH9�����
y_FH5_1_FH6_1 = y1 + y2 + FH5_1 + FH6_1 + saopin + ytu;             %�ŵ�����317
y_FH5_1_FH7_1 = y1 + y2 + FH5_1 + FH7_1 + saopin + ytu;             %�ŵ�����318
y_FH5_1_FH8_1 = y1 + y2 + FH5_1 + FH8_1 + saopin + ytu;             %�ŵ�����319
y_FH5_1_FH9_1 = y1 + y2 + FH5_1 + FH9_1 + saopin + ytu;             %�ŵ�����320

y_FH5_1_1_FH6_1 = y1 + y2 + FH5_1_1 + FH6_1 + saopin + ytu;         %�ŵ�����321
y_FH5_1_1_FH7_1 = y1 + y2 + FH5_1_1 + FH7_1 + saopin + ytu;         %�ŵ�����322
y_FH5_1_1_FH8_1 = y1 + y2 + FH5_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����323
y_FH5_1_1_FH9_1 = y1 + y2 + FH5_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����324

y_FH5_1_2_FH6_1 = y1 + y2 + FH5_1_2 + FH6_1 + saopin + ytu;         %�ŵ�����325
y_FH5_1_2_FH7_1 = y1 + y2 + FH5_1_2 + FH7_1 + saopin + ytu;         %�ŵ�����326
y_FH5_1_2_FH8_1 = y1 + y2 + FH5_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����327
y_FH5_1_2_FH9_1 = y1 + y2 + FH5_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����328

y_FH5_2_FH6_1 = y1 + y2 + FH5_2 + FH6_1 + saopin + ytu;             %�ŵ�����329
y_FH5_2_FH7_1 = y1 + y2 + FH5_2 + FH7_1 + saopin + ytu;             %�ŵ�����330
y_FH5_2_FH8_1 = y1 + y2 + FH5_2 + FH8_1 + saopin + ytu;             %�ŵ�����331
y_FH5_2_FH9_1 = y1 + y2 + FH5_2 + FH9_1 + saopin + ytu;             %�ŵ�����332

y_FH5_2_1_FH6_1 = y1 + y2 + FH5_2_1 + FH6_1 + saopin + ytu;         %�ŵ�����333
y_FH5_2_1_FH7_1 = y1 + y2 + FH5_2_1 + FH7_1 + saopin + ytu;         %�ŵ�����334
y_FH5_2_1_FH8_1 = y1 + y2 + FH5_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����335
y_FH5_2_1_FH9_1 = y1 + y2 + FH5_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����336

y_FH5_2_2_FH6_1 = y1 + y2 + FH5_2_2 + FH6_1 + saopin + ytu;         %�ŵ�����337
y_FH5_2_2_FH7_1 = y1 + y2 + FH5_2_2 + FH7_1 + saopin + ytu;         %�ŵ�����338
y_FH5_2_2_FH8_1 = y1 + y2 + FH5_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����339
y_FH5_2_2_FH9_1 = y1 + y2 + FH5_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����340

y_FH5_3_FH6_1 = y1 + y2 + FH5_3 + FH6_1 + saopin + ytu;             %�ŵ�����341
y_FH5_3_FH7_1 = y1 + y2 + FH5_3 + FH7_1 + saopin + ytu;             %�ŵ�����342
y_FH5_3_FH8_1 = y1 + y2 + FH5_3 + FH8_1 + saopin + ytu;             %�ŵ�����343
y_FH5_3_FH9_1 = y1 + y2 + FH5_3 + FH9_1 + saopin + ytu;             %�ŵ�����344

y_FH5_3_1_FH6_1 = y1 + y2 + FH5_3_1 + FH6_1 + saopin + ytu;         %�ŵ�����345
y_FH5_3_1_FH7_1 = y1 + y2 + FH5_3_1 + FH7_1 + saopin + ytu;         %�ŵ�����346
y_FH5_3_1_FH8_1 = y1 + y2 + FH5_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����347
y_FH5_3_1_FH9_1 = y1 + y2 + FH5_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����348

y_FH5_3_2_FH6_1 = y1 + y2 + FH5_3_2 + FH6_1 + saopin + ytu;         %�ŵ�����349
y_FH5_3_2_FH7_1 = y1 + y2 + FH5_3_2 + FH7_1 + saopin + ytu;         %�ŵ�����350
y_FH5_3_2_FH8_1 = y1 + y2 + FH5_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����351
y_FH5_3_2_FH9_1 = y1 + y2 + FH5_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����352

%% FH6ϵ����FH7...FH9�����
y_FH6_1_FH7_1 = y1 + y2 + FH6_1 + FH7_1 + saopin + ytu;             %�ŵ�����353
y_FH6_1_FH8_1 = y1 + y2 + FH6_1 + FH8_1 + saopin + ytu;             %�ŵ�����354
y_FH6_1_FH9_1 = y1 + y2 + FH6_1 + FH9_1 + saopin + ytu;             %�ŵ�����355

y_FH6_1_1_FH7_1 = y1 + y2 + FH6_1_1 + FH7_1 + saopin + ytu;         %�ŵ�����356
y_FH6_1_1_FH8_1 = y1 + y2 + FH6_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����357
y_FH6_1_1_FH9_1 = y1 + y2 + FH6_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����358

y_FH6_1_2_FH7_1 = y1 + y2 + FH6_1_2 + FH7_1 + saopin + ytu;         %�ŵ�����359
y_FH6_1_2_FH8_1 = y1 + y2 + FH6_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����360
y_FH6_1_2_FH9_1 = y1 + y2 + FH6_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����361

y_FH6_2_FH7_1 = y1 + y2 + FH6_2 + FH7_1 + saopin + ytu;             %�ŵ�����362
y_FH6_2_FH8_1 = y1 + y2 + FH6_2 + FH8_1 + saopin + ytu;             %�ŵ�����363
y_FH6_2_FH9_1 = y1 + y2 + FH6_2 + FH9_1 + saopin + ytu;             %�ŵ�����364

y_FH6_2_1_FH7_1 = y1 + y2 + FH6_2_1 + FH7_1 + saopin + ytu;         %�ŵ�����365
y_FH6_2_1_FH8_1 = y1 + y2 + FH6_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����366
y_FH6_2_1_FH9_1 = y1 + y2 + FH6_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����367

y_FH6_2_2_FH7_1 = y1 + y2 + FH6_2_2 + FH7_1 + saopin + ytu;         %�ŵ�����368
y_FH6_2_2_FH8_1 = y1 + y2 + FH6_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����369
y_FH6_2_2_FH9_1 = y1 + y2 + FH6_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����370

y_FH6_3_FH7_1 = y1 + y2 + FH6_3 + FH7_1 + saopin + ytu;             %�ŵ�����371
y_FH6_3_FH8_1 = y1 + y2 + FH6_3 + FH8_1 + saopin + ytu;             %�ŵ�����372
y_FH6_3_FH9_1 = y1 + y2 + FH6_3 + FH9_1 + saopin + ytu;             %�ŵ�����373

y_FH6_3_1_FH7_1 = y1 + y2 + FH6_3_1 + FH7_1 + saopin + ytu;         %�ŵ�����374
y_FH6_3_1_FH8_1 = y1 + y2 + FH6_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����375
y_FH6_3_1_FH9_1 = y1 + y2 + FH6_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����376

y_FH6_3_2_FH7_1 = y1 + y2 + FH6_3_2 + FH7_1 + saopin + ytu;         %�ŵ�����377
y_FH6_3_2_FH8_1 = y1 + y2 + FH6_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����378
y_FH6_3_2_FH9_1 = y1 + y2 + FH6_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����379

%% FH7ϵ����FH8...FH9�����
y_FH7_1_FH8_1 = y1 + y2 + FH7_1 + FH8_1 + saopin + ytu;             %�ŵ�����380
y_FH7_1_FH9_1 = y1 + y2 + FH7_1 + FH9_1 + saopin + ytu;             %�ŵ�����381

y_FH7_1_1_FH8_1 = y1 + y2 + FH7_1_1 + FH8_1 + saopin + ytu;         %�ŵ�����382
y_FH7_1_1_FH9_1 = y1 + y2 + FH7_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����383

y_FH7_1_2_FH8_1 = y1 + y2 + FH7_1_2 + FH8_1 + saopin + ytu;         %�ŵ�����384
y_FH7_1_2_FH9_1 = y1 + y2 + FH7_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����385

y_FH7_2_FH8_1 = y1 + y2 + FH7_2 + FH8_1 + saopin + ytu;             %�ŵ�����386
y_FH7_2_FH9_1 = y1 + y2 + FH7_2 + FH9_1 + saopin + ytu;             %�ŵ�����387

y_FH7_2_1_FH8_1 = y1 + y2 + FH7_2_1 + FH8_1 + saopin + ytu;         %�ŵ�����388
y_FH7_2_1_FH9_1 = y1 + y2 + FH7_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����390

y_FH7_2_2_FH8_1 = y1 + y2 + FH7_2_2 + FH8_1 + saopin + ytu;         %�ŵ�����391
y_FH7_2_2_FH9_1 = y1 + y2 + FH7_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����392

y_FH7_3_FH8_1 = y1 + y2 + FH7_3 + FH8_1 + saopin + ytu;             %�ŵ�����393
y_FH7_3_FH9_1 = y1 + y2 + FH7_3 + FH9_1 + saopin + ytu;             %�ŵ�����394

y_FH7_3_1_FH8_1 = y1 + y2 + FH7_3_1 + FH8_1 + saopin + ytu;         %�ŵ�����395
y_FH7_3_1_FH9_1 = y1 + y2 + FH7_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����396

y_FH7_3_2_FH8_1 = y1 + y2 + FH7_3_2 + FH8_1 + saopin + ytu;         %�ŵ�����397
y_FH7_3_2_FH9_1 = y1 + y2 + FH7_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����398

%% FH8ϵ����FH9�����
y_FH8_1_FH9_1 = y1 + y2 + FH8_1 + FH9_1 + saopin + ytu;             %�ŵ�����399

y_FH8_1_1_FH9_1 = y1 + y2 + FH8_1_1 + FH9_1 + saopin + ytu;         %�ŵ�����400

y_FH8_1_2_FH9_1 = y1 + y2 + FH8_1_2 + FH9_1 + saopin + ytu;         %�ŵ�����401

y_FH8_2_FH9_1 = y1 + y2 + FH8_2 + FH9_1 + saopin + ytu;             %�ŵ�����402

y_FH8_2_1_FH9_1 = y1 + y2 + FH8_2_1 + FH9_1 + saopin + ytu;         %�ŵ�����403

y_FH8_2_2_FH9_1 = y1 + y2 + FH8_2_2 + FH9_1 + saopin + ytu;         %�ŵ�����404

y_FH8_3_FH9_1 = y1 + y2 + FH8_3 + FH9_1 + saopin + ytu;             %�ŵ�����405

y_FH8_3_1_FH9_1 = y1 + y2 + FH8_3_1 + FH9_1 + saopin + ytu;         %�ŵ�����406

y_FH8_3_2_FH9_1 = y1 + y2 + FH8_3_2 + FH9_1 + saopin + ytu;         %�ŵ�����407


%% FH1ϵ����FH2��FH3...FH9�ĵڶ������
y_FH1_1_FH2_1_1 = y1 + y2 + FH1_1 + FH2_1_1 + saopin + ytu;             %�ŵ�����408
y_FH1_1_FH3_1_1 = y1 + y2 + FH1_1 + FH3_1_1 + saopin + ytu;             %�ŵ�����409
y_FH1_1_FH4_1_1 = y1 + y2 + FH1_1 + FH4_1_1 + saopin + ytu;             %�ŵ�����410
y_FH1_1_FH5_1_1 = y1 + y2 + FH1_1 + FH5_1_1 + saopin + ytu;             %�ŵ�����411
y_FH1_1_FH6_1_1 = y1 + y2 + FH1_1 + FH6_1_1 + saopin + ytu;             %�ŵ�����412
y_FH1_1_FH7_1_1 = y1 + y2 + FH1_1 + FH7_1_1 + saopin + ytu;             %�ŵ�����413
y_FH1_1_FH8_1_1 = y1 + y2 + FH1_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����414
y_FH1_1_FH9_1_1 = y1 + y2 + FH1_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����415

y_FH1_1_1_FH2_1_1 = y1 + y2 + FH1_1_1 + FH2_1_1 + saopin + ytu;         %�ŵ�����416
y_FH1_1_1_FH3_1_1 = y1 + y2 + FH1_1_1 + FH3_1_1 + saopin + ytu;         %�ŵ�����417
y_FH1_1_1_FH4_1_1 = y1 + y2 + FH1_1_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����418
y_FH1_1_1_FH5_1_1 = y1 + y2 + FH1_1_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����419
y_FH1_1_1_FH6_1_1 = y1 + y2 + FH1_1_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����420
y_FH1_1_1_FH7_1_1 = y1 + y2 + FH1_1_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����421
y_FH1_1_1_FH8_1_1 = y1 + y2 + FH1_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����422
y_FH1_1_1_FH9_1_1 = y1 + y2 + FH1_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����423

y_FH1_1_2_FH2_1_1 = y1 + y2 + FH1_1_2 + FH2_1_1 + saopin + ytu;         %�ŵ�����424
y_FH1_1_2_FH3_1_1 = y1 + y2 + FH1_1_2 + FH3_1_1 + saopin + ytu;         %�ŵ�����425
y_FH1_1_2_FH4_1_1 = y1 + y2 + FH1_1_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����426
y_FH1_1_2_FH5_1_1 = y1 + y2 + FH1_1_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����427
y_FH1_1_2_FH6_1_1 = y1 + y2 + FH1_1_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����428
y_FH1_1_2_FH7_1_1 = y1 + y2 + FH1_1_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����429
y_FH1_1_2_FH8_1_1 = y1 + y2 + FH1_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����430
y_FH1_1_2_FH9_1_1 = y1 + y2 + FH1_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����431

y_FH1_2_FH2_1_1 = y1 + y2 + FH1_2 + FH2_1_1 + saopin + ytu;             %�ŵ�����432
y_FH1_2_FH3_1_1 = y1 + y2 + FH1_2 + FH3_1_1 + saopin + ytu;             %�ŵ�����433
y_FH1_2_FH4_1_1 = y1 + y2 + FH1_2 + FH4_1_1 + saopin + ytu;             %�ŵ�����434
y_FH1_2_FH5_1_1 = y1 + y2 + FH1_2 + FH5_1_1 + saopin + ytu;             %�ŵ�����435
y_FH1_2_FH6_1_1 = y1 + y2 + FH1_2 + FH6_1_1 + saopin + ytu;             %�ŵ�����436
y_FH1_2_FH7_1_1 = y1 + y2 + FH1_2 + FH7_1_1 + saopin + ytu;             %�ŵ�����437
y_FH1_2_FH8_1_1 = y1 + y2 + FH1_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����438
y_FH1_2_FH9_1_1 = y1 + y2 + FH1_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����439

y_FH1_2_1_FH2_1_1 = y1 + y2 + FH1_2_1 + FH2_1_1 + saopin + ytu;         %�ŵ�����440
y_FH1_2_1_FH3_1_1 = y1 + y2 + FH1_2_1 + FH3_1_1 + saopin + ytu;         %�ŵ�����441
y_FH1_2_1_FH4_1_1 = y1 + y2 + FH1_2_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����442
y_FH1_2_1_FH5_1_1 = y1 + y2 + FH1_2_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����443
y_FH1_2_1_FH6_1_1 = y1 + y2 + FH1_2_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����444
y_FH1_2_1_FH7_1_1 = y1 + y2 + FH1_2_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����445
y_FH1_2_1_FH8_1_1 = y1 + y2 + FH1_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����446
y_FH1_2_1_FH9_1_1 = y1 + y2 + FH1_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����447

y_FH1_2_2_FH2_1_1 = y1 + y2 + FH1_2_2 + FH2_1_1 + saopin + ytu;         %�ŵ�����448
y_FH1_2_2_FH3_1_1 = y1 + y2 + FH1_2_2 + FH3_1_1 + saopin + ytu;         %�ŵ�����449
y_FH1_2_2_FH4_1_1 = y1 + y2 + FH1_2_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����450
y_FH1_2_2_FH5_1_1 = y1 + y2 + FH1_2_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����451
y_FH1_2_2_FH6_1_1 = y1 + y2 + FH1_2_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����452
y_FH1_2_2_FH7_1_1 = y1 + y2 + FH1_2_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����453
y_FH1_2_2_FH8_1_1 = y1 + y2 + FH1_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����454
y_FH1_2_2_FH9_1_1 = y1 + y2 + FH1_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����455

y_FH1_3_FH2_1_1 = y1 + y2 + FH1_3 + FH2_1_1 + saopin + ytu;             %�ŵ�����456
y_FH1_3_FH3_1_1 = y1 + y2 + FH1_3 + FH3_1_1 + saopin + ytu;             %�ŵ�����457
y_FH1_3_FH4_1_1 = y1 + y2 + FH1_3 + FH4_1_1 + saopin + ytu;             %�ŵ�����458
y_FH1_3_FH5_1_1 = y1 + y2 + FH1_3 + FH5_1_1 + saopin + ytu;             %�ŵ�����459
y_FH1_3_FH6_1_1 = y1 + y2 + FH1_3 + FH6_1_1 + saopin + ytu;             %�ŵ�����460
y_FH1_3_FH7_1_1 = y1 + y2 + FH1_3 + FH7_1_1 + saopin + ytu;             %�ŵ�����461
y_FH1_3_FH8_1_1 = y1 + y2 + FH1_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����462
y_FH1_3_FH9_1_1 = y1 + y2 + FH1_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����463

y_FH1_3_1_FH2_1_1 = y1 + y2 + FH1_3_1 + FH2_1_1 + saopin + ytu;         %�ŵ�����464
y_FH1_3_1_FH3_1_1 = y1 + y2 + FH1_3_1 + FH3_1_1 + saopin + ytu;         %�ŵ�����467
y_FH1_3_1_FH4_1_1 = y1 + y2 + FH1_3_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����468
y_FH1_3_1_FH5_1_1 = y1 + y2 + FH1_3_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����469
y_FH1_3_1_FH6_1_1 = y1 + y2 + FH1_3_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����470
y_FH1_3_1_FH7_1_1 = y1 + y2 + FH1_3_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����471
y_FH1_3_1_FH8_1_1 = y1 + y2 + FH1_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����472
y_FH1_3_1_FH9_1_1 = y1 + y2 + FH1_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����473

y_FH1_3_2_FH2_1_1 = y1 + y2 + FH1_3_2 + FH2_1_1 + saopin + ytu;         %�ŵ�����474
y_FH1_3_2_FH3_1_1 = y1 + y2 + FH1_3_2 + FH3_1_1 + saopin + ytu;         %�ŵ�����475
y_FH1_3_2_FH4_1_1 = y1 + y2 + FH1_3_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����476
y_FH1_3_2_FH5_1_1 = y1 + y2 + FH1_3_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����477
y_FH1_3_2_FH6_1_1 = y1 + y2 + FH1_3_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����478
y_FH1_3_2_FH7_1_1 = y1 + y2 + FH1_3_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����479
y_FH1_3_2_FH8_1_1 = y1 + y2 + FH1_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����480
y_FH1_3_2_FH9_1_1 = y1 + y2 + FH1_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����481

%% FH2ϵ����FH3...FH9�����
y_FH2_1_FH3_1_1 = y1 + y2 + FH2_1 + FH3_1_1 + saopin + ytu;             %�ŵ�����482
y_FH2_1_FH4_1_1 = y1 + y2 + FH2_1 + FH4_1_1 + saopin + ytu;             %�ŵ�����483
y_FH2_1_FH5_1_1 = y1 + y2 + FH2_1 + FH5_1_1 + saopin + ytu;             %�ŵ�����484
y_FH2_1_FH6_1_1 = y1 + y2 + FH2_1 + FH6_1_1 + saopin + ytu;             %�ŵ�����485
y_FH2_1_FH7_1_1 = y1 + y2 + FH2_1 + FH7_1_1 + saopin + ytu;             %�ŵ�����486
y_FH2_1_FH8_1_1 = y1 + y2 + FH2_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����487
y_FH2_1_FH9_1_1 = y1 + y2 + FH2_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����488

y_FH2_1_1_FH3_1_1 = y1 + y2 + FH2_1_1 + FH3_1_1 + saopin + ytu;         %�ŵ�����489
y_FH2_1_1_FH4_1_1 = y1 + y2 + FH2_1_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����490
y_FH2_1_1_FH5_1_1 = y1 + y2 + FH2_1_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����491
y_FH2_1_1_FH6_1_1 = y1 + y2 + FH2_1_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����492
y_FH2_1_1_FH7_1_1 = y1 + y2 + FH2_1_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����493
y_FH2_1_1_FH8_1_1 = y1 + y2 + FH2_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����494
y_FH2_1_1_FH9_1_1 = y1 + y2 + FH2_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����495

y_FH2_1_2_FH3_1_1 = y1 + y2 + FH2_1_2 + FH3_1_1 + saopin + ytu;         %�ŵ�����496
y_FH2_1_2_FH4_1_1 = y1 + y2 + FH2_1_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����497
y_FH2_1_2_FH5_1_1 = y1 + y2 + FH2_1_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����498
y_FH2_1_2_FH6_1_1 = y1 + y2 + FH2_1_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����499
y_FH2_1_2_FH7_1_1 = y1 + y2 + FH2_1_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����500
y_FH2_1_2_FH8_1_1 = y1 + y2 + FH2_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����501
y_FH2_1_2_FH9_1_1 = y1 + y2 + FH2_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����502

y_FH2_2_FH3_1_1 = y1 + y2 + FH2_2 + FH3_1_1 + saopin + ytu;             %�ŵ�����503
y_FH2_2_FH4_1_1 = y1 + y2 + FH2_2 + FH4_1_1 + saopin + ytu;             %�ŵ�����504
y_FH2_2_FH5_1_1 = y1 + y2 + FH2_2 + FH5_1_1 + saopin + ytu;             %�ŵ�����505
y_FH2_2_FH6_1_1 = y1 + y2 + FH2_2 + FH6_1_1 + saopin + ytu;             %�ŵ�����506
y_FH2_2_FH7_1_1 = y1 + y2 + FH2_2 + FH7_1_1 + saopin + ytu;             %�ŵ�����507
y_FH2_2_FH8_1_1 = y1 + y2 + FH2_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����508
y_FH2_2_FH9_1_1 = y1 + y2 + FH2_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����509

y_FH2_2_1_FH3_1_1 = y1 + y2 + FH2_2_1 + FH3_1_1 + saopin + ytu;         %�ŵ�����510
y_FH2_2_1_FH4_1_1 = y1 + y2 + FH2_2_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����511
y_FH2_2_1_FH5_1_1 = y1 + y2 + FH2_2_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����512
y_FH2_2_1_FH6_1_1 = y1 + y2 + FH2_2_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����513
y_FH2_2_1_FH7_1_1 = y1 + y2 + FH2_2_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����514
y_FH2_2_1_FH8_1_1 = y1 + y2 + FH2_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����515
y_FH2_2_1_FH9_1_1 = y1 + y2 + FH2_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����516

y_FH2_2_2_FH3_1_1 = y1 + y2 + FH2_2_2 + FH3_1_1 + saopin + ytu;         %�ŵ�����517
y_FH2_2_2_FH4_1_1 = y1 + y2 + FH2_2_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����518
y_FH2_2_2_FH5_1_1 = y1 + y2 + FH2_2_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����519
y_FH2_2_2_FH6_1_1 = y1 + y2 + FH2_2_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����520
y_FH2_2_2_FH7_1_1 = y1 + y2 + FH2_2_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����521
y_FH2_2_2_FH8_1_1 = y1 + y2 + FH2_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����522
y_FH2_2_2_FH9_1_1 = y1 + y2 + FH2_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����523

y_FH2_3_FH3_1_1 = y1 + y2 + FH2_3 + FH3_1_1 + saopin + ytu;             %�ŵ�����524
y_FH2_3_FH4_1_1 = y1 + y2 + FH2_3 + FH4_1_1 + saopin + ytu;             %�ŵ�����525
y_FH2_3_FH5_1_1 = y1 + y2 + FH2_3 + FH5_1_1 + saopin + ytu;             %�ŵ�����526
y_FH2_3_FH6_1_1 = y1 + y2 + FH2_3 + FH6_1_1 + saopin + ytu;             %�ŵ�����527
y_FH2_3_FH7_1_1 = y1 + y2 + FH2_3 + FH7_1_1 + saopin + ytu;             %�ŵ�����528
y_FH2_3_FH8_1_1 = y1 + y2 + FH2_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����529
y_FH2_3_FH9_1_1 = y1 + y2 + FH2_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����530

y_FH2_3_1_FH3_1_1 = y1 + y2 + FH2_3_1 + FH3_1_1 + saopin + ytu;         %�ŵ�����531
y_FH2_3_1_FH4_1_1 = y1 + y2 + FH2_3_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����532
y_FH2_3_1_FH5_1_1 = y1 + y2 + FH2_3_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����533
y_FH2_3_1_FH6_1_1 = y1 + y2 + FH2_3_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����534
y_FH2_3_1_FH7_1_1 = y1 + y2 + FH2_3_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����535
y_FH2_3_1_FH8_1_1 = y1 + y2 + FH2_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����536
y_FH2_3_1_FH9_1_1 = y1 + y2 + FH2_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����537

y_FH2_3_2_FH3_1_1 = y1 + y2 + FH2_3_2 + FH3_1_1 + saopin + ytu;         %�ŵ�����538
y_FH2_3_2_FH4_1_1 = y1 + y2 + FH2_3_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����539
y_FH2_3_2_FH5_1_1 = y1 + y2 + FH2_3_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����540
y_FH2_3_2_FH6_1_1 = y1 + y2 + FH2_3_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����541
y_FH2_3_2_FH7_1_1 = y1 + y2 + FH2_3_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����542
y_FH2_3_2_FH8_1_1 = y1 + y2 + FH2_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����543
y_FH2_3_2_FH9_1_1 = y1 + y2 + FH2_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����544

%% FH3ϵ����FH4...FH9�����
y_FH3_1_FH4_1_1 = y1 + y2 + FH3_1 + FH4_1_1 + saopin + ytu;             %�ŵ�����545
y_FH3_1_FH5_1_1 = y1 + y2 + FH3_1 + FH5_1_1 + saopin + ytu;             %�ŵ�����546
y_FH3_1_FH6_1_1 = y1 + y2 + FH3_1 + FH6_1_1 + saopin + ytu;             %�ŵ�����547
y_FH3_1_FH7_1_1 = y1 + y2 + FH3_1 + FH7_1_1 + saopin + ytu;             %�ŵ�����548
y_FH3_1_FH8_1_1 = y1 + y2 + FH3_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����549
y_FH3_1_FH9_1_1 = y1 + y2 + FH3_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����550

y_FH3_1_1_FH4_1_1 = y1 + y2 + FH3_1_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����551
y_FH3_1_1_FH5_1_1 = y1 + y2 + FH3_1_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����552
y_FH3_1_1_FH6_1_1 = y1 + y2 + FH3_1_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����553
y_FH3_1_1_FH7_1_1 = y1 + y2 + FH3_1_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����554
y_FH3_1_1_FH8_1_1 = y1 + y2 + FH3_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����555
y_FH3_1_1_FH9_1_1 = y1 + y2 + FH3_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����556

y_FH3_1_2_FH4_1_1 = y1 + y2 + FH3_1_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����557
y_FH3_1_2_FH5_1_1 = y1 + y2 + FH3_1_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����558
y_FH3_1_2_FH6_1_1 = y1 + y2 + FH3_1_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����559
y_FH3_1_2_FH7_1_1 = y1 + y2 + FH3_1_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����560
y_FH3_1_2_FH8_1_1 = y1 + y2 + FH3_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����561
y_FH3_1_2_FH9_1_1 = y1 + y2 + FH3_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����562

y_FH3_2_FH4_1_1 = y1 + y2 + FH3_2 + FH4_1_1 + saopin + ytu;             %�ŵ�����563
y_FH3_2_FH5_1_1 = y1 + y2 + FH3_2 + FH5_1_1 + saopin + ytu;             %�ŵ�����564
y_FH3_2_FH6_1_1 = y1 + y2 + FH3_2 + FH6_1_1 + saopin + ytu;             %�ŵ�����565
y_FH3_2_FH7_1_1 = y1 + y2 + FH3_2 + FH7_1_1 + saopin + ytu;             %�ŵ�����566
y_FH3_2_FH8_1_1 = y1 + y2 + FH3_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����567
y_FH3_2_FH9_1_1 = y1 + y2 + FH3_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����568

y_FH3_2_1_FH4_1_1 = y1 + y2 + FH3_2_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����569
y_FH3_2_1_FH5_1_1 = y1 + y2 + FH3_2_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����570
y_FH3_2_1_FH6_1_1 = y1 + y2 + FH3_2_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����571
y_FH3_2_1_FH7_1_1 = y1 + y2 + FH3_2_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����572
y_FH3_2_1_FH8_1_1 = y1 + y2 + FH3_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����573
y_FH3_2_1_FH9_1_1 = y1 + y2 + FH3_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����574

y_FH3_2_2_FH4_1_1 = y1 + y2 + FH3_2_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����575
y_FH3_2_2_FH5_1_1 = y1 + y2 + FH3_2_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����576
y_FH3_2_2_FH6_1_1 = y1 + y2 + FH3_2_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����577
y_FH3_2_2_FH7_1_1 = y1 + y2 + FH3_2_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����578
y_FH3_2_2_FH8_1_1 = y1 + y2 + FH3_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����579
y_FH3_2_2_FH9_1_1 = y1 + y2 + FH3_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����580

y_FH3_3_FH4_1_1 = y1 + y2 + FH3_3 + FH4_1_1 + saopin + ytu;             %�ŵ�����581
y_FH3_3_FH5_1_1 = y1 + y2 + FH3_3 + FH5_1_1 + saopin + ytu;             %�ŵ�����582
y_FH3_3_FH6_1_1 = y1 + y2 + FH3_3 + FH6_1_1 + saopin + ytu;             %�ŵ�����583
y_FH3_3_FH7_1_1 = y1 + y2 + FH3_3 + FH7_1_1 + saopin + ytu;             %�ŵ�����584
y_FH3_3_FH8_1_1 = y1 + y2 + FH3_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����585
y_FH3_3_FH9_1_1 = y1 + y2 + FH3_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����586

y_FH3_3_1_FH4_1_1 = y1 + y2 + FH3_3_1 + FH4_1_1 + saopin + ytu;         %�ŵ�����587
y_FH3_3_1_FH5_1_1 = y1 + y2 + FH3_3_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����588
y_FH3_3_1_FH6_1_1 = y1 + y2 + FH3_3_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����589
y_FH3_3_1_FH7_1_1 = y1 + y2 + FH3_3_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����590
y_FH3_3_1_FH8_1_1 = y1 + y2 + FH3_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����591
y_FH3_3_1_FH9_1_1 = y1 + y2 + FH3_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����592

y_FH3_3_2_FH4_1_1 = y1 + y2 + FH3_3_2 + FH4_1_1 + saopin + ytu;         %�ŵ�����593
y_FH3_3_2_FH5_1_1 = y1 + y2 + FH3_3_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����594
y_FH3_3_2_FH6_1_1 = y1 + y2 + FH3_3_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����595
y_FH3_3_2_FH7_1_1 = y1 + y2 + FH3_3_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����596
y_FH3_3_2_FH8_1_1 = y1 + y2 + FH3_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����597
y_FH3_3_2_FH9_1_1 = y1 + y2 + FH3_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����598

%% FH4ϵ����FH5...FH9�����
y_FH4_1_FH5_1_1 = y1 + y2 + FH4_1 + FH5_1_1 + saopin + ytu;             %�ŵ�����599
y_FH4_1_FH6_1_1 = y1 + y2 + FH4_1 + FH6_1_1 + saopin + ytu;             %�ŵ�����600
y_FH4_1_FH7_1_1 = y1 + y2 + FH4_1 + FH7_1_1 + saopin + ytu;             %�ŵ�����601
y_FH4_1_FH8_1_1 = y1 + y2 + FH4_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����602
y_FH4_1_FH9_1_1 = y1 + y2 + FH4_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����603

y_FH4_1_1_FH5_1_1 = y1 + y2 + FH4_1_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����604
y_FH4_1_1_FH6_1_1 = y1 + y2 + FH4_1_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����605
y_FH4_1_1_FH7_1_1 = y1 + y2 + FH4_1_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����606
y_FH4_1_1_FH8_1_1 = y1 + y2 + FH4_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����607
y_FH4_1_1_FH9_1_1 = y1 + y2 + FH4_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����608

y_FH4_1_2_FH5_1_1 = y1 + y2 + FH4_1_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����609
y_FH4_1_2_FH6_1_1 = y1 + y2 + FH4_1_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����610
y_FH4_1_2_FH7_1_1 = y1 + y2 + FH4_1_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����611
y_FH4_1_2_FH8_1_1 = y1 + y2 + FH4_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����612
y_FH4_1_2_FH9_1_1 = y1 + y2 + FH4_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����613

y_FH4_2_FH5_1_1 = y1 + y2 + FH4_2 + FH5_1_1 + saopin + ytu;             %�ŵ�����614
y_FH4_2_FH6_1_1 = y1 + y2 + FH4_2 + FH6_1_1 + saopin + ytu;             %�ŵ�����615
y_FH4_2_FH7_1_1 = y1 + y2 + FH4_2 + FH7_1_1 + saopin + ytu;             %�ŵ�����616
y_FH4_2_FH8_1_1 = y1 + y2 + FH4_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����617
y_FH4_2_FH9_1_1 = y1 + y2 + FH4_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����618

y_FH4_2_1_FH5_1_1 = y1 + y2 + FH4_2_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����619
y_FH4_2_1_FH6_1_1 = y1 + y2 + FH4_2_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����620
y_FH4_2_1_FH7_1_1 = y1 + y2 + FH4_2_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����621
y_FH4_2_1_FH8_1_1 = y1 + y2 + FH4_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����622
y_FH4_2_1_FH9_1_1 = y1 + y2 + FH4_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����623

y_FH4_2_2_FH5_1_1 = y1 + y2 + FH4_2_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����624
y_FH4_2_2_FH6_1_1 = y1 + y2 + FH4_2_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����625
y_FH4_2_2_FH7_1_1 = y1 + y2 + FH4_2_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����626
y_FH4_2_2_FH8_1_1 = y1 + y2 + FH4_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����627
y_FH4_2_2_FH9_1_1 = y1 + y2 + FH4_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����628

y_FH4_3_FH5_1_1 = y1 + y2 + FH4_3 + FH5_1_1 + saopin + ytu;             %�ŵ�����629
y_FH4_3_FH6_1_1 = y1 + y2 + FH4_3 + FH6_1_1 + saopin + ytu;             %�ŵ�����630
y_FH4_3_FH7_1_1 = y1 + y2 + FH4_3 + FH7_1_1 + saopin + ytu;             %�ŵ�����631
y_FH4_3_FH8_1_1 = y1 + y2 + FH4_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����632
y_FH4_3_FH9_1_1 = y1 + y2 + FH4_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����633

y_FH4_3_1_FH5_1_1 = y1 + y2 + FH4_3_1 + FH5_1_1 + saopin + ytu;         %�ŵ�����634
y_FH4_3_1_FH6_1_1 = y1 + y2 + FH4_3_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����635
y_FH4_3_1_FH7_1_1 = y1 + y2 + FH4_3_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����636
y_FH4_3_1_FH8_1_1 = y1 + y2 + FH4_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����637
y_FH4_3_1_FH9_1_1 = y1 + y2 + FH4_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����638

y_FH4_3_2_FH5_1_1 = y1 + y2 + FH4_3_2 + FH5_1_1 + saopin + ytu;         %�ŵ�����639
y_FH4_3_2_FH6_1_1 = y1 + y2 + FH4_3_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����640
y_FH4_3_2_FH7_1_1 = y1 + y2 + FH4_3_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����641
y_FH4_3_2_FH8_1_1 = y1 + y2 + FH4_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����642
y_FH4_3_2_FH9_1_1 = y1 + y2 + FH4_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����643

%% FH5ϵ����FH6...FH9�����
y_FH5_1_FH6_1_1 = y1 + y2 + FH5_1 + FH6_1_1 + saopin + ytu;             %�ŵ�����644
y_FH5_1_FH7_1_1 = y1 + y2 + FH5_1 + FH7_1_1 + saopin + ytu;             %�ŵ�����645
y_FH5_1_FH8_1_1 = y1 + y2 + FH5_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����646
y_FH5_1_FH9_1_1 = y1 + y2 + FH5_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����647

y_FH5_1_1_FH6_1_1 = y1 + y2 + FH5_1_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����648
y_FH5_1_1_FH7_1_1 = y1 + y2 + FH5_1_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����649
y_FH5_1_1_FH8_1_1 = y1 + y2 + FH5_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����650
y_FH5_1_1_FH9_1_1 = y1 + y2 + FH5_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����651

y_FH5_1_2_FH6_1_1 = y1 + y2 + FH5_1_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����652
y_FH5_1_2_FH7_1_1 = y1 + y2 + FH5_1_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����653
y_FH5_1_2_FH8_1_1 = y1 + y2 + FH5_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����654
y_FH5_1_2_FH9_1_1 = y1 + y2 + FH5_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����655

y_FH5_2_FH6_1_1 = y1 + y2 + FH5_2 + FH6_1_1 + saopin + ytu;             %�ŵ�����656
y_FH5_2_FH7_1_1 = y1 + y2 + FH5_2 + FH7_1_1 + saopin + ytu;             %�ŵ�����657
y_FH5_2_FH8_1_1 = y1 + y2 + FH5_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����658
y_FH5_2_FH9_1_1 = y1 + y2 + FH5_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����659

y_FH5_2_1_FH6_1_1 = y1 + y2 + FH5_2_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����660
y_FH5_2_1_FH7_1_1 = y1 + y2 + FH5_2_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����661
y_FH5_2_1_FH8_1_1 = y1 + y2 + FH5_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����662
y_FH5_2_1_FH9_1_1 = y1 + y2 + FH5_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����663

y_FH5_2_2_FH6_1_1 = y1 + y2 + FH5_2_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����664
y_FH5_2_2_FH7_1_1 = y1 + y2 + FH5_2_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����665
y_FH5_2_2_FH8_1_1 = y1 + y2 + FH5_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����666
y_FH5_2_2_FH9_1_1 = y1 + y2 + FH5_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����667

y_FH5_3_FH6_1_1 = y1 + y2 + FH5_3 + FH6_1_1 + saopin + ytu;             %�ŵ�����668
y_FH5_3_FH7_1_1 = y1 + y2 + FH5_3 + FH7_1_1 + saopin + ytu;             %�ŵ�����669
y_FH5_3_FH8_1_1 = y1 + y2 + FH5_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����670
y_FH5_3_FH9_1_1 = y1 + y2 + FH5_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����671

y_FH5_3_1_FH6_1_1 = y1 + y2 + FH5_3_1 + FH6_1_1 + saopin + ytu;         %�ŵ�����672
y_FH5_3_1_FH7_1_1 = y1 + y2 + FH5_3_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����673
y_FH5_3_1_FH8_1_1 = y1 + y2 + FH5_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����674
y_FH5_3_1_FH9_1_1 = y1 + y2 + FH5_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����675

y_FH5_3_2_FH6_1_1 = y1 + y2 + FH5_3_2 + FH6_1_1 + saopin + ytu;         %�ŵ�����676
y_FH5_3_2_FH7_1_1 = y1 + y2 + FH5_3_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����677
y_FH5_3_2_FH8_1_1 = y1 + y2 + FH5_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����678
y_FH5_3_2_FH9_1_1 = y1 + y2 + FH5_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����679

%% FH6ϵ����FH7...FH9�����
y_FH6_1_FH7_1_1 = y1 + y2 + FH6_1 + FH7_1_1 + saopin + ytu;             %�ŵ�����680
y_FH6_1_FH8_1_1 = y1 + y2 + FH6_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����681
y_FH6_1_FH9_1_1 = y1 + y2 + FH6_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����682

y_FH6_1_1_FH7_1_1 = y1 + y2 + FH6_1_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����683
y_FH6_1_1_FH8_1_1 = y1 + y2 + FH6_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����684
y_FH6_1_1_FH9_1_1 = y1 + y2 + FH6_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����685

y_FH6_1_2_FH7_1_1 = y1 + y2 + FH6_1_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����686
y_FH6_1_2_FH8_1_1 = y1 + y2 + FH6_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����687
y_FH6_1_2_FH9_1_1 = y1 + y2 + FH6_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����688

y_FH6_2_FH7_1_1 = y1 + y2 + FH6_2 + FH7_1_1 + saopin + ytu;             %�ŵ�����689
y_FH6_2_FH8_1_1 = y1 + y2 + FH6_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����690
y_FH6_2_FH9_1_1 = y1 + y2 + FH6_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����691

y_FH6_2_1_FH7_1_1 = y1 + y2 + FH6_2_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����692
y_FH6_2_1_FH8_1_1 = y1 + y2 + FH6_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����693
y_FH6_2_1_FH9_1_1 = y1 + y2 + FH6_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����694

y_FH6_2_2_FH7_1_1 = y1 + y2 + FH6_2_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����695
y_FH6_2_2_FH8_1_1 = y1 + y2 + FH6_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����696
y_FH6_2_2_FH9_1_1 = y1 + y2 + FH6_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����697

y_FH6_3_FH7_1_1 = y1 + y2 + FH6_3 + FH7_1_1 + saopin + ytu;             %�ŵ�����698
y_FH6_3_FH8_1_1 = y1 + y2 + FH6_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����699
y_FH6_3_FH9_1_1 = y1 + y2 + FH6_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����700

y_FH6_3_1_FH7_1_1 = y1 + y2 + FH6_3_1 + FH7_1_1 + saopin + ytu;         %�ŵ�����701
y_FH6_3_1_FH8_1_1 = y1 + y2 + FH6_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����702
y_FH6_3_1_FH9_1_1 = y1 + y2 + FH6_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����703

y_FH6_3_2_FH7_1_1 = y1 + y2 + FH6_3_2 + FH7_1_1 + saopin + ytu;         %�ŵ�����704
y_FH6_3_2_FH8_1_1 = y1 + y2 + FH6_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����705
y_FH6_3_2_FH9_1_1 = y1 + y2 + FH6_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����706

%% FH7ϵ����FH8...FH9�����
y_FH7_1_FH8_1_1 = y1 + y2 + FH7_1 + FH8_1_1 + saopin + ytu;             %�ŵ�����707
y_FH7_1_FH9_1_1 = y1 + y2 + FH7_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����708

y_FH7_1_1_FH8_1_1 = y1 + y2 + FH7_1_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����709
y_FH7_1_1_FH9_1_1 = y1 + y2 + FH7_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����710

y_FH7_1_2_FH8_1_1 = y1 + y2 + FH7_1_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����711
y_FH7_1_2_FH9_1_1 = y1 + y2 + FH7_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����712

y_FH7_2_FH8_1_1 = y1 + y2 + FH7_2 + FH8_1_1 + saopin + ytu;             %�ŵ�����713
y_FH7_2_FH9_1_1 = y1 + y2 + FH7_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����714

y_FH7_2_1_FH8_1_1 = y1 + y2 + FH7_2_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����715
y_FH7_2_1_FH9_1_1 = y1 + y2 + FH7_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����716

y_FH7_2_2_FH8_1_1 = y1 + y2 + FH7_2_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����717
y_FH7_2_2_FH9_1_1 = y1 + y2 + FH7_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����718

y_FH7_3_FH8_1_1 = y1 + y2 + FH7_3 + FH8_1_1 + saopin + ytu;             %�ŵ�����719
y_FH7_3_FH9_1_1 = y1 + y2 + FH7_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����720

y_FH7_3_1_FH8_1_1 = y1 + y2 + FH7_3_1 + FH8_1_1 + saopin + ytu;         %�ŵ�����721
y_FH7_3_1_FH9_1_1 = y1 + y2 + FH7_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����722

y_FH7_3_2_FH8_1_1 = y1 + y2 + FH7_3_2 + FH8_1_1 + saopin + ytu;         %�ŵ�����723
y_FH7_3_2_FH9_1_1 = y1 + y2 + FH7_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����724

%% FH8ϵ����FH9�����
y_FH8_1_FH9_1_1 = y1 + y2 + FH8_1 + FH9_1_1 + saopin + ytu;             %�ŵ�����725

y_FH8_1_1_FH9_1_1 = y1 + y2 + FH8_1_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����726

y_FH8_1_2_FH9_1_1 = y1 + y2 + FH8_1_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����727

y_FH8_2_FH9_1_1 = y1 + y2 + FH8_2 + FH9_1_1 + saopin + ytu;             %�ŵ�����728

y_FH8_2_1_FH9_1_1 = y1 + y2 + FH8_2_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����729

y_FH8_2_2_FH9_1_1 = y1 + y2 + FH8_2_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����730

y_FH8_3_FH9_1_1 = y1 + y2 + FH8_3 + FH9_1_1 + saopin + ytu;             %�ŵ�����731

y_FH8_3_1_FH9_1_1 = y1 + y2 + FH8_3_1 + FH9_1_1 + saopin + ytu;         %�ŵ�����732

y_FH8_3_2_FH9_1_1 = y1 + y2 + FH8_3_2 + FH9_1_1 + saopin + ytu;         %�ŵ�����733

%% FH1ϵ����FH2��FH3...FH9�ĵ��������
y_FH1_1_FH2_2 = y1 + y2 + FH1_1 + FH2_2 + saopin + ytu;             %�ŵ�����734
y_FH1_1_FH3_2 = y1 + y2 + FH1_1 + FH3_2 + saopin + ytu;             %�ŵ�����735
y_FH1_1_FH4_2 = y1 + y2 + FH1_1 + FH4_2 + saopin + ytu;             %�ŵ�����736
y_FH1_1_FH5_2 = y1 + y2 + FH1_1 + FH5_2 + saopin + ytu;             %�ŵ�����737
y_FH1_1_FH6_2 = y1 + y2 + FH1_1 + FH6_2 + saopin + ytu;             %�ŵ�����738
y_FH1_1_FH7_2 = y1 + y2 + FH1_1 + FH7_2 + saopin + ytu;             %�ŵ�����739
y_FH1_1_FH8_2 = y1 + y2 + FH1_1 + FH8_2 + saopin + ytu;             %�ŵ�����740
y_FH1_1_FH9_2 = y1 + y2 + FH1_1 + FH9_2 + saopin + ytu;             %�ŵ�����741

y_FH1_1_1_FH2_2 = y1 + y2 + FH1_1_1 + FH2_2 + saopin + ytu;         %�ŵ�����742
y_FH1_1_1_FH3_2 = y1 + y2 + FH1_1_1 + FH3_2 + saopin + ytu;         %�ŵ�����743
y_FH1_1_1_FH4_2 = y1 + y2 + FH1_1_1 + FH4_2 + saopin + ytu;         %�ŵ�����744
y_FH1_1_1_FH5_2 = y1 + y2 + FH1_1_1 + FH5_2 + saopin + ytu;         %�ŵ�����745
y_FH1_1_1_FH6_2 = y1 + y2 + FH1_1_1 + FH6_2 + saopin + ytu;         %�ŵ�����746
y_FH1_1_1_FH7_2 = y1 + y2 + FH1_1_1 + FH7_2 + saopin + ytu;         %�ŵ�����747
y_FH1_1_1_FH8_2 = y1 + y2 + FH1_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����748
y_FH1_1_1_FH9_2 = y1 + y2 + FH1_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����749

y_FH1_1_2_FH2_2 = y1 + y2 + FH1_1_2 + FH2_2 + saopin + ytu;         %�ŵ�����750
y_FH1_1_2_FH3_2 = y1 + y2 + FH1_1_2 + FH3_2 + saopin + ytu;         %�ŵ�����751
y_FH1_1_2_FH4_2 = y1 + y2 + FH1_1_2 + FH4_2 + saopin + ytu;         %�ŵ�����752
y_FH1_1_2_FH5_2 = y1 + y2 + FH1_1_2 + FH5_2 + saopin + ytu;         %�ŵ�����753
y_FH1_1_2_FH6_2 = y1 + y2 + FH1_1_2 + FH6_2 + saopin + ytu;         %�ŵ�����754
y_FH1_1_2_FH7_2 = y1 + y2 + FH1_1_2 + FH7_2 + saopin + ytu;         %�ŵ�����755
y_FH1_1_2_FH8_2 = y1 + y2 + FH1_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����756
y_FH1_1_2_FH9_2 = y1 + y2 + FH1_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����757

y_FH1_2_FH2_2 = y1 + y2 + FH1_2 + FH2_2 + saopin + ytu;             %�ŵ�����758
y_FH1_2_FH3_2 = y1 + y2 + FH1_2 + FH3_2 + saopin + ytu;             %�ŵ�����759
y_FH1_2_FH4_2 = y1 + y2 + FH1_2 + FH4_2 + saopin + ytu;             %�ŵ�����760
y_FH1_2_FH5_2 = y1 + y2 + FH1_2 + FH5_2 + saopin + ytu;             %�ŵ�����761
y_FH1_2_FH6_2 = y1 + y2 + FH1_2 + FH6_2 + saopin + ytu;             %�ŵ�����762
y_FH1_2_FH7_2 = y1 + y2 + FH1_2 + FH7_2 + saopin + ytu;             %�ŵ�����763
y_FH1_2_FH8_2 = y1 + y2 + FH1_2 + FH8_2 + saopin + ytu;             %�ŵ�����764
y_FH1_2_FH9_2 = y1 + y2 + FH1_2 + FH9_2 + saopin + ytu;             %�ŵ�����767

y_FH1_2_1_FH2_2 = y1 + y2 + FH1_2_1 + FH2_2 + saopin + ytu;         %�ŵ�����768
y_FH1_2_1_FH3_2 = y1 + y2 + FH1_2_1 + FH3_2 + saopin + ytu;         %�ŵ�����769
y_FH1_2_1_FH4_2 = y1 + y2 + FH1_2_1 + FH4_2 + saopin + ytu;         %�ŵ�����770
y_FH1_2_1_FH5_2 = y1 + y2 + FH1_2_1 + FH5_2 + saopin + ytu;         %�ŵ�����771
y_FH1_2_1_FH6_2 = y1 + y2 + FH1_2_1 + FH6_2 + saopin + ytu;         %�ŵ�����772
y_FH1_2_1_FH7_2 = y1 + y2 + FH1_2_1 + FH7_2 + saopin + ytu;         %�ŵ�����773
y_FH1_2_1_FH8_2 = y1 + y2 + FH1_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����774
y_FH1_2_1_FH9_2 = y1 + y2 + FH1_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����775

y_FH1_2_2_FH2_2 = y1 + y2 + FH1_2_2 + FH2_2 + saopin + ytu;         %�ŵ�����776
y_FH1_2_2_FH3_2 = y1 + y2 + FH1_2_2 + FH3_2 + saopin + ytu;         %�ŵ�����777
y_FH1_2_2_FH4_2 = y1 + y2 + FH1_2_2 + FH4_2 + saopin + ytu;         %�ŵ�����778
y_FH1_2_2_FH5_2 = y1 + y2 + FH1_2_2 + FH5_2 + saopin + ytu;         %�ŵ�����779
y_FH1_2_2_FH6_2 = y1 + y2 + FH1_2_2 + FH6_2 + saopin + ytu;         %�ŵ�����780
y_FH1_2_2_FH7_2 = y1 + y2 + FH1_2_2 + FH7_2 + saopin + ytu;         %�ŵ�����781
y_FH1_2_2_FH8_2 = y1 + y2 + FH1_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����782
y_FH1_2_2_FH9_2 = y1 + y2 + FH1_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����783

y_FH1_3_FH2_2 = y1 + y2 + FH1_3 + FH2_2 + saopin + ytu;             %�ŵ�����784
y_FH1_3_FH3_2 = y1 + y2 + FH1_3 + FH3_2 + saopin + ytu;             %�ŵ�����785
y_FH1_3_FH4_2 = y1 + y2 + FH1_3 + FH4_2 + saopin + ytu;             %�ŵ�����786
y_FH1_3_FH5_2 = y1 + y2 + FH1_3 + FH5_2 + saopin + ytu;             %�ŵ�����787
y_FH1_3_FH6_2 = y1 + y2 + FH1_3 + FH6_2 + saopin + ytu;             %�ŵ�����788
y_FH1_3_FH7_2 = y1 + y2 + FH1_3 + FH7_2 + saopin + ytu;             %�ŵ�����789
y_FH1_3_FH8_2 = y1 + y2 + FH1_3 + FH8_2 + saopin + ytu;             %�ŵ�����790
y_FH1_3_FH9_2 = y1 + y2 + FH1_3 + FH9_2 + saopin + ytu;             %�ŵ�����791

y_FH1_3_1_FH2_2 = y1 + y2 + FH1_3_1 + FH2_2 + saopin + ytu;         %�ŵ�����792
y_FH1_3_1_FH3_2 = y1 + y2 + FH1_3_1 + FH3_2 + saopin + ytu;         %�ŵ�����793
y_FH1_3_1_FH4_2 = y1 + y2 + FH1_3_1 + FH4_2 + saopin + ytu;         %�ŵ�����794
y_FH1_3_1_FH5_2 = y1 + y2 + FH1_3_1 + FH5_2 + saopin + ytu;         %�ŵ�����795
y_FH1_3_1_FH6_2 = y1 + y2 + FH1_3_1 + FH6_2 + saopin + ytu;         %�ŵ�����796
y_FH1_3_1_FH7_2 = y1 + y2 + FH1_3_1 + FH7_2 + saopin + ytu;         %�ŵ�����797
y_FH1_3_1_FH8_2 = y1 + y2 + FH1_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����798
y_FH1_3_1_FH9_2 = y1 + y2 + FH1_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����799

y_FH1_3_2_FH2_2 = y1 + y2 + FH1_3_2 + FH2_2 + saopin + ytu;         %�ŵ�����800
y_FH1_3_2_FH3_2 = y1 + y2 + FH1_3_2 + FH3_2 + saopin + ytu;         %�ŵ�����801
y_FH1_3_2_FH4_2 = y1 + y2 + FH1_3_2 + FH4_2 + saopin + ytu;         %�ŵ�����802
y_FH1_3_2_FH5_2 = y1 + y2 + FH1_3_2 + FH5_2 + saopin + ytu;         %�ŵ�����803
y_FH1_3_2_FH6_2 = y1 + y2 + FH1_3_2 + FH6_2 + saopin + ytu;         %�ŵ�����804
y_FH1_3_2_FH7_2 = y1 + y2 + FH1_3_2 + FH7_2 + saopin + ytu;         %�ŵ�����805
y_FH1_3_2_FH8_2 = y1 + y2 + FH1_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����806
y_FH1_3_2_FH9_2 = y1 + y2 + FH1_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����807

%% FH2ϵ����FH3...FH9�����
y_FH2_1_FH3_2 = y1 + y2 + FH2_1 + FH3_2 + saopin + ytu;             %�ŵ�����808
y_FH2_1_FH4_2 = y1 + y2 + FH2_1 + FH4_2 + saopin + ytu;             %�ŵ�����809
y_FH2_1_FH5_2 = y1 + y2 + FH2_1 + FH5_2 + saopin + ytu;             %�ŵ�����810
y_FH2_1_FH6_2 = y1 + y2 + FH2_1 + FH6_2 + saopin + ytu;             %�ŵ�����811
y_FH2_1_FH7_2 = y1 + y2 + FH2_1 + FH7_2 + saopin + ytu;             %�ŵ�����812
y_FH2_1_FH8_2 = y1 + y2 + FH2_1 + FH8_2 + saopin + ytu;             %�ŵ�����813
y_FH2_1_FH9_2 = y1 + y2 + FH2_1 + FH9_2 + saopin + ytu;             %�ŵ�����814

y_FH2_1_1_FH3_2 = y1 + y2 + FH2_1_1 + FH3_2 + saopin + ytu;         %�ŵ�����815
y_FH2_1_1_FH4_2 = y1 + y2 + FH2_1_1 + FH4_2 + saopin + ytu;         %�ŵ�����816
y_FH2_1_1_FH5_2 = y1 + y2 + FH2_1_1 + FH5_2 + saopin + ytu;         %�ŵ�����817
y_FH2_1_1_FH6_2 = y1 + y2 + FH2_1_1 + FH6_2 + saopin + ytu;         %�ŵ�����818
y_FH2_1_1_FH7_2 = y1 + y2 + FH2_1_1 + FH7_2 + saopin + ytu;         %�ŵ�����819
y_FH2_1_1_FH8_2 = y1 + y2 + FH2_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����820
y_FH2_1_1_FH9_2 = y1 + y2 + FH2_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����821

y_FH2_1_2_FH3_2 = y1 + y2 + FH2_1_2 + FH3_2 + saopin + ytu;         %�ŵ�����822
y_FH2_1_2_FH4_2 = y1 + y2 + FH2_1_2 + FH4_2 + saopin + ytu;         %�ŵ�����823
y_FH2_1_2_FH5_2 = y1 + y2 + FH2_1_2 + FH5_2 + saopin + ytu;         %�ŵ�����824
y_FH2_1_2_FH6_2 = y1 + y2 + FH2_1_2 + FH6_2 + saopin + ytu;         %�ŵ�����825
y_FH2_1_2_FH7_2 = y1 + y2 + FH2_1_2 + FH7_2 + saopin + ytu;         %�ŵ�����826
y_FH2_1_2_FH8_2 = y1 + y2 + FH2_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����827
y_FH2_1_2_FH9_2 = y1 + y2 + FH2_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����828

y_FH2_2_FH3_2 = y1 + y2 + FH2_2 + FH3_2 + saopin + ytu;             %�ŵ�����829
y_FH2_2_FH4_2 = y1 + y2 + FH2_2 + FH4_2 + saopin + ytu;             %�ŵ�����830
y_FH2_2_FH5_2 = y1 + y2 + FH2_2 + FH5_2 + saopin + ytu;             %�ŵ�����831
y_FH2_2_FH6_2 = y1 + y2 + FH2_2 + FH6_2 + saopin + ytu;             %�ŵ�����832
y_FH2_2_FH7_2 = y1 + y2 + FH2_2 + FH7_2 + saopin + ytu;             %�ŵ�����833
y_FH2_2_FH8_2 = y1 + y2 + FH2_2 + FH8_2 + saopin + ytu;             %�ŵ�����834
y_FH2_2_FH9_2 = y1 + y2 + FH2_2 + FH9_2 + saopin + ytu;             %�ŵ�����835

y_FH2_2_1_FH3_2 = y1 + y2 + FH2_2_1 + FH3_2 + saopin + ytu;         %�ŵ�����836
y_FH2_2_1_FH4_2 = y1 + y2 + FH2_2_1 + FH4_2 + saopin + ytu;         %�ŵ�����837
y_FH2_2_1_FH5_2 = y1 + y2 + FH2_2_1 + FH5_2 + saopin + ytu;         %�ŵ�����838
y_FH2_2_1_FH6_2 = y1 + y2 + FH2_2_1 + FH6_2 + saopin + ytu;         %�ŵ�����839
y_FH2_2_1_FH7_2 = y1 + y2 + FH2_2_1 + FH7_2 + saopin + ytu;         %�ŵ�����840
y_FH2_2_1_FH8_2 = y1 + y2 + FH2_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����841
y_FH2_2_1_FH9_2 = y1 + y2 + FH2_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����842

y_FH2_2_2_FH3_2 = y1 + y2 + FH2_2_2 + FH3_2 + saopin + ytu;         %�ŵ�����843
y_FH2_2_2_FH4_2 = y1 + y2 + FH2_2_2 + FH4_2 + saopin + ytu;         %�ŵ�����844
y_FH2_2_2_FH5_2 = y1 + y2 + FH2_2_2 + FH5_2 + saopin + ytu;         %�ŵ�����845
y_FH2_2_2_FH6_2 = y1 + y2 + FH2_2_2 + FH6_2 + saopin + ytu;         %�ŵ�����846
y_FH2_2_2_FH7_2 = y1 + y2 + FH2_2_2 + FH7_2 + saopin + ytu;         %�ŵ�����847
y_FH2_2_2_FH8_2 = y1 + y2 + FH2_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����848
y_FH2_2_2_FH9_2 = y1 + y2 + FH2_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����849

y_FH2_3_FH3_2 = y1 + y2 + FH2_3 + FH3_2 + saopin + ytu;             %�ŵ�����850
y_FH2_3_FH4_2 = y1 + y2 + FH2_3 + FH4_2 + saopin + ytu;             %�ŵ�����851
y_FH2_3_FH5_2 = y1 + y2 + FH2_3 + FH5_2 + saopin + ytu;             %�ŵ�����852
y_FH2_3_FH6_2 = y1 + y2 + FH2_3 + FH6_2 + saopin + ytu;             %�ŵ�����853
y_FH2_3_FH7_2 = y1 + y2 + FH2_3 + FH7_2 + saopin + ytu;             %�ŵ�����854
y_FH2_3_FH8_2 = y1 + y2 + FH2_3 + FH8_2 + saopin + ytu;             %�ŵ�����855
y_FH2_3_FH9_2 = y1 + y2 + FH2_3 + FH9_2 + saopin + ytu;             %�ŵ�����856

y_FH2_3_1_FH3_2 = y1 + y2 + FH2_3_1 + FH3_2 + saopin + ytu;         %�ŵ�����857
y_FH2_3_1_FH4_2 = y1 + y2 + FH2_3_1 + FH4_2 + saopin + ytu;         %�ŵ�����858
y_FH2_3_1_FH5_2 = y1 + y2 + FH2_3_1 + FH5_2 + saopin + ytu;         %�ŵ�����859
y_FH2_3_1_FH6_2 = y1 + y2 + FH2_3_1 + FH6_2 + saopin + ytu;         %�ŵ�����860
y_FH2_3_1_FH7_2 = y1 + y2 + FH2_3_1 + FH7_2 + saopin + ytu;         %�ŵ�����861
y_FH2_3_1_FH8_2 = y1 + y2 + FH2_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����862
y_FH2_3_1_FH9_2 = y1 + y2 + FH2_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����863

y_FH2_3_2_FH3_2 = y1 + y2 + FH2_3_2 + FH3_2 + saopin + ytu;         %�ŵ�����864
y_FH2_3_2_FH4_2 = y1 + y2 + FH2_3_2 + FH4_2 + saopin + ytu;         %�ŵ�����865
y_FH2_3_2_FH5_2 = y1 + y2 + FH2_3_2 + FH5_2 + saopin + ytu;         %�ŵ�����866
y_FH2_3_2_FH6_2 = y1 + y2 + FH2_3_2 + FH6_2 + saopin + ytu;         %�ŵ�����867
y_FH2_3_2_FH7_2 = y1 + y2 + FH2_3_2 + FH7_2 + saopin + ytu;         %�ŵ�����868
y_FH2_3_2_FH8_2 = y1 + y2 + FH2_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����869
y_FH2_3_2_FH9_2 = y1 + y2 + FH2_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����870

%% FH3ϵ����FH4...FH9�����
y_FH3_1_FH4_2 = y1 + y2 + FH3_1 + FH4_2 + saopin + ytu;             %�ŵ�����871
y_FH3_1_FH5_2 = y1 + y2 + FH3_1 + FH5_2 + saopin + ytu;             %�ŵ�����872
y_FH3_1_FH6_2 = y1 + y2 + FH3_1 + FH6_2 + saopin + ytu;             %�ŵ�����873
y_FH3_1_FH7_2 = y1 + y2 + FH3_1 + FH7_2 + saopin + ytu;             %�ŵ�����874
y_FH3_1_FH8_2 = y1 + y2 + FH3_1 + FH8_2 + saopin + ytu;             %�ŵ�����875
y_FH3_1_FH9_2 = y1 + y2 + FH3_1 + FH9_2 + saopin + ytu;             %�ŵ�����876

y_FH3_1_1_FH4_2 = y1 + y2 + FH3_1_1 + FH4_2 + saopin + ytu;         %�ŵ�����877
y_FH3_1_1_FH5_2 = y1 + y2 + FH3_1_1 + FH5_2 + saopin + ytu;         %�ŵ�����878
y_FH3_1_1_FH6_2 = y1 + y2 + FH3_1_1 + FH6_2 + saopin + ytu;         %�ŵ�����879
y_FH3_1_1_FH7_2 = y1 + y2 + FH3_1_1 + FH7_2 + saopin + ytu;         %�ŵ�����880
y_FH3_1_1_FH8_2 = y1 + y2 + FH3_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����881
y_FH3_1_1_FH9_2 = y1 + y2 + FH3_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����882

y_FH3_1_2_FH4_2 = y1 + y2 + FH3_1_2 + FH4_2 + saopin + ytu;         %�ŵ�����883
y_FH3_1_2_FH5_2 = y1 + y2 + FH3_1_2 + FH5_2 + saopin + ytu;         %�ŵ�����884
y_FH3_1_2_FH6_2 = y1 + y2 + FH3_1_2 + FH6_2 + saopin + ytu;         %�ŵ�����885
y_FH3_1_2_FH7_2 = y1 + y2 + FH3_1_2 + FH7_2 + saopin + ytu;         %�ŵ�����886
y_FH3_1_2_FH8_2 = y1 + y2 + FH3_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����887
y_FH3_1_2_FH9_2 = y1 + y2 + FH3_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����888

y_FH3_2_FH4_2 = y1 + y2 + FH3_2 + FH4_2 + saopin + ytu;             %�ŵ�����889
y_FH3_2_FH5_2 = y1 + y2 + FH3_2 + FH5_2 + saopin + ytu;             %�ŵ�����890
y_FH3_2_FH6_2 = y1 + y2 + FH3_2 + FH6_2 + saopin + ytu;             %�ŵ�����891
y_FH3_2_FH7_2 = y1 + y2 + FH3_2 + FH7_2 + saopin + ytu;             %�ŵ�����892
y_FH3_2_FH8_2 = y1 + y2 + FH3_2 + FH8_2 + saopin + ytu;             %�ŵ�����893
y_FH3_2_FH9_2 = y1 + y2 + FH3_2 + FH9_2 + saopin + ytu;             %�ŵ�����894

y_FH3_2_1_FH4_2 = y1 + y2 + FH3_2_1 + FH4_2 + saopin + ytu;         %�ŵ�����895
y_FH3_2_1_FH5_2 = y1 + y2 + FH3_2_1 + FH5_2 + saopin + ytu;         %�ŵ�����896
y_FH3_2_1_FH6_2 = y1 + y2 + FH3_2_1 + FH6_2 + saopin + ytu;         %�ŵ�����897
y_FH3_2_1_FH7_2 = y1 + y2 + FH3_2_1 + FH7_2 + saopin + ytu;         %�ŵ�����898
y_FH3_2_1_FH8_2 = y1 + y2 + FH3_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����899
y_FH3_2_1_FH9_2 = y1 + y2 + FH3_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����900

y_FH3_2_2_FH4_2 = y1 + y2 + FH3_2_2 + FH4_2 + saopin + ytu;         %�ŵ�����901
y_FH3_2_2_FH5_2 = y1 + y2 + FH3_2_2 + FH5_2 + saopin + ytu;         %�ŵ�����902
y_FH3_2_2_FH6_2 = y1 + y2 + FH3_2_2 + FH6_2 + saopin + ytu;         %�ŵ�����903
y_FH3_2_2_FH7_2 = y1 + y2 + FH3_2_2 + FH7_2 + saopin + ytu;         %�ŵ�����904
y_FH3_2_2_FH8_2 = y1 + y2 + FH3_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����905
y_FH3_2_2_FH9_2 = y1 + y2 + FH3_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����906

y_FH3_3_FH4_2 = y1 + y2 + FH3_3 + FH4_2 + saopin + ytu;             %�ŵ�����907
y_FH3_3_FH5_2 = y1 + y2 + FH3_3 + FH5_2 + saopin + ytu;             %�ŵ�����908
y_FH3_3_FH6_2 = y1 + y2 + FH3_3 + FH6_2 + saopin + ytu;             %�ŵ�����909
y_FH3_3_FH7_2 = y1 + y2 + FH3_3 + FH7_2 + saopin + ytu;             %�ŵ�����910
y_FH3_3_FH8_2 = y1 + y2 + FH3_3 + FH8_2 + saopin + ytu;             %�ŵ�����911
y_FH3_3_FH9_2 = y1 + y2 + FH3_3 + FH9_2 + saopin + ytu;             %�ŵ�����912
y_FH3_3_1_FH4_2 = y1 + y2 + FH3_3_1 + FH4_2 + saopin + ytu;         %�ŵ�����913
y_FH3_3_1_FH5_2 = y1 + y2 + FH3_3_1 + FH5_2 + saopin + ytu;         %�ŵ�����914
y_FH3_3_1_FH6_2 = y1 + y2 + FH3_3_1 + FH6_2 + saopin + ytu;         %�ŵ�����915
y_FH3_3_1_FH7_2 = y1 + y2 + FH3_3_1 + FH7_2 + saopin + ytu;         %�ŵ�����916
y_FH3_3_1_FH8_2 = y1 + y2 + FH3_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����917
y_FH3_3_1_FH9_2 = y1 + y2 + FH3_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����918

y_FH3_3_2_FH4_2 = y1 + y2 + FH3_3_2 + FH4_2 + saopin + ytu;         %�ŵ�����919
y_FH3_3_2_FH5_2 = y1 + y2 + FH3_3_2 + FH5_2 + saopin + ytu;         %�ŵ�����920
y_FH3_3_2_FH6_2 = y1 + y2 + FH3_3_2 + FH6_2 + saopin + ytu;         %�ŵ�����921
y_FH3_3_2_FH7_2 = y1 + y2 + FH3_3_2 + FH7_2 + saopin + ytu;         %�ŵ�����922
y_FH3_3_2_FH8_2 = y1 + y2 + FH3_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����923
y_FH3_3_2_FH9_2 = y1 + y2 + FH3_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����924

%% FH4ϵ����FH5...FH9�����
y_FH4_1_FH5_2 = y1 + y2 + FH4_1 + FH5_2 + saopin + ytu;             %�ŵ�����925
y_FH4_1_FH6_2 = y1 + y2 + FH4_1 + FH6_2 + saopin + ytu;             %�ŵ�����926
y_FH4_1_FH7_2 = y1 + y2 + FH4_1 + FH7_2 + saopin + ytu;             %�ŵ�����927
y_FH4_1_FH8_2 = y1 + y2 + FH4_1 + FH8_2 + saopin + ytu;             %�ŵ�����928
y_FH4_1_FH9_2 = y1 + y2 + FH4_1 + FH9_2 + saopin + ytu;             %�ŵ�����929

y_FH4_1_1_FH5_2 = y1 + y2 + FH4_1_1 + FH5_2 + saopin + ytu;         %�ŵ�����930
y_FH4_1_1_FH6_2 = y1 + y2 + FH4_1_1 + FH6_2 + saopin + ytu;         %�ŵ�����931
y_FH4_1_1_FH7_2 = y1 + y2 + FH4_1_1 + FH7_2 + saopin + ytu;         %�ŵ�����932
y_FH4_1_1_FH8_2 = y1 + y2 + FH4_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����933
y_FH4_1_1_FH9_2 = y1 + y2 + FH4_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����934

y_FH4_1_2_FH5_2 = y1 + y2 + FH4_1_2 + FH5_2 + saopin + ytu;         %�ŵ�����935
y_FH4_1_2_FH6_2 = y1 + y2 + FH4_1_2 + FH6_2 + saopin + ytu;         %�ŵ�����936
y_FH4_1_2_FH7_2 = y1 + y2 + FH4_1_2 + FH7_2 + saopin + ytu;         %�ŵ�����937
y_FH4_1_2_FH8_2 = y1 + y2 + FH4_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����938
y_FH4_1_2_FH9_2 = y1 + y2 + FH4_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����939

y_FH4_2_FH5_2 = y1 + y2 + FH4_2 + FH5_2 + saopin + ytu;             %�ŵ�����940
y_FH4_2_FH6_2 = y1 + y2 + FH4_2 + FH6_2 + saopin + ytu;             %�ŵ�����941
y_FH4_2_FH7_2 = y1 + y2 + FH4_2 + FH7_2 + saopin + ytu;             %�ŵ�����942
y_FH4_2_FH8_2 = y1 + y2 + FH4_2 + FH8_2 + saopin + ytu;             %�ŵ�����943
y_FH4_2_FH9_2 = y1 + y2 + FH4_2 + FH9_2 + saopin + ytu;             %�ŵ�����944

y_FH4_2_1_FH5_2 = y1 + y2 + FH4_2_1 + FH5_2 + saopin + ytu;         %�ŵ�����945
y_FH4_2_1_FH6_2 = y1 + y2 + FH4_2_1 + FH6_2 + saopin + ytu;         %�ŵ�����946
y_FH4_2_1_FH7_2 = y1 + y2 + FH4_2_1 + FH7_2 + saopin + ytu;         %�ŵ�����947
y_FH4_2_1_FH8_2 = y1 + y2 + FH4_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����948
y_FH4_2_1_FH9_2 = y1 + y2 + FH4_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����949

y_FH4_2_2_FH5_2 = y1 + y2 + FH4_2_2 + FH5_2 + saopin + ytu;         %�ŵ�����950
y_FH4_2_2_FH6_2 = y1 + y2 + FH4_2_2 + FH6_2 + saopin + ytu;         %�ŵ�����951
y_FH4_2_2_FH7_2 = y1 + y2 + FH4_2_2 + FH7_2 + saopin + ytu;         %�ŵ�����952
y_FH4_2_2_FH8_2 = y1 + y2 + FH4_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����953
y_FH4_2_2_FH9_2 = y1 + y2 + FH4_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����954

y_FH4_3_FH5_2 = y1 + y2 + FH4_3 + FH5_2 + saopin + ytu;             %�ŵ�����955
y_FH4_3_FH6_2 = y1 + y2 + FH4_3 + FH6_2 + saopin + ytu;             %�ŵ�����956
y_FH4_3_FH7_2 = y1 + y2 + FH4_3 + FH7_2 + saopin + ytu;             %�ŵ�����957
y_FH4_3_FH8_2 = y1 + y2 + FH4_3 + FH8_2 + saopin + ytu;             %�ŵ�����958
y_FH4_3_FH9_2 = y1 + y2 + FH4_3 + FH9_2 + saopin + ytu;             %�ŵ�����959

y_FH4_3_1_FH5_2 = y1 + y2 + FH4_3_1 + FH5_2 + saopin + ytu;         %�ŵ�����960
y_FH4_3_1_FH6_2 = y1 + y2 + FH4_3_1 + FH6_2 + saopin + ytu;         %�ŵ�����961
y_FH4_3_1_FH7_2 = y1 + y2 + FH4_3_1 + FH7_2 + saopin + ytu;         %�ŵ�����962
y_FH4_3_1_FH8_2 = y1 + y2 + FH4_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����963
y_FH4_3_1_FH9_2 = y1 + y2 + FH4_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����964

y_FH4_3_2_FH5_2 = y1 + y2 + FH4_3_2 + FH5_2 + saopin + ytu;         %�ŵ�����965
y_FH4_3_2_FH6_2 = y1 + y2 + FH4_3_2 + FH6_2 + saopin + ytu;         %�ŵ�����966
y_FH4_3_2_FH7_2 = y1 + y2 + FH4_3_2 + FH7_2 + saopin + ytu;         %�ŵ�����967
y_FH4_3_2_FH8_2 = y1 + y2 + FH4_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����968
y_FH4_3_2_FH9_2 = y1 + y2 + FH4_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����969

%% FH5ϵ����FH6...FH9�����
y_FH5_1_FH6_2 = y1 + y2 + FH5_1 + FH6_2 + saopin + ytu;             %�ŵ�����970
y_FH5_1_FH7_2 = y1 + y2 + FH5_1 + FH7_2 + saopin + ytu;             %�ŵ�����971
y_FH5_1_FH8_2 = y1 + y2 + FH5_1 + FH8_2 + saopin + ytu;             %�ŵ�����972
y_FH5_1_FH9_2 = y1 + y2 + FH5_1 + FH9_2 + saopin + ytu;             %�ŵ�����973

y_FH5_1_1_FH6_2 = y1 + y2 + FH5_1_1 + FH6_2 + saopin + ytu;         %�ŵ�����974
y_FH5_1_1_FH7_2 = y1 + y2 + FH5_1_1 + FH7_2 + saopin + ytu;         %�ŵ�����975
y_FH5_1_1_FH8_2 = y1 + y2 + FH5_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����976
y_FH5_1_1_FH9_2 = y1 + y2 + FH5_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����977

y_FH5_1_2_FH6_2 = y1 + y2 + FH5_1_2 + FH6_2 + saopin + ytu;         %�ŵ�����978
y_FH5_1_2_FH7_2 = y1 + y2 + FH5_1_2 + FH7_2 + saopin + ytu;         %�ŵ�����979
y_FH5_1_2_FH8_2 = y1 + y2 + FH5_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����980
y_FH5_1_2_FH9_2 = y1 + y2 + FH5_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����981

y_FH5_2_FH6_2 = y1 + y2 + FH5_2 + FH6_2 + saopin + ytu;             %�ŵ�����982
y_FH5_2_FH7_2 = y1 + y2 + FH5_2 + FH7_2 + saopin + ytu;             %�ŵ�����983
y_FH5_2_FH8_2 = y1 + y2 + FH5_2 + FH8_2 + saopin + ytu;             %�ŵ�����984
y_FH5_2_FH9_2 = y1 + y2 + FH5_2 + FH9_2 + saopin + ytu;             %�ŵ�����985

y_FH5_2_1_FH6_2 = y1 + y2 + FH5_2_1 + FH6_2 + saopin + ytu;         %�ŵ�����986
y_FH5_2_1_FH7_2 = y1 + y2 + FH5_2_1 + FH7_2 + saopin + ytu;         %�ŵ�����987
y_FH5_2_1_FH8_2 = y1 + y2 + FH5_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����988
y_FH5_2_1_FH9_2 = y1 + y2 + FH5_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����989

y_FH5_2_2_FH6_2 = y1 + y2 + FH5_2_2 + FH6_2 + saopin + ytu;         %�ŵ�����990
y_FH5_2_2_FH7_2 = y1 + y2 + FH5_2_2 + FH7_2 + saopin + ytu;         %�ŵ�����991
y_FH5_2_2_FH8_2 = y1 + y2 + FH5_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����992
y_FH5_2_2_FH9_2 = y1 + y2 + FH5_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����993

y_FH5_3_FH6_2 = y1 + y2 + FH5_3 + FH6_2 + saopin + ytu;             %�ŵ�����994
y_FH5_3_FH7_2 = y1 + y2 + FH5_3 + FH7_2 + saopin + ytu;             %�ŵ�����995
y_FH5_3_FH8_2 = y1 + y2 + FH5_3 + FH8_2 + saopin + ytu;             %�ŵ�����996
y_FH5_3_FH9_2 = y1 + y2 + FH5_3 + FH9_2 + saopin + ytu;             %�ŵ�����997

y_FH5_3_1_FH6_2 = y1 + y2 + FH5_3_1 + FH6_2 + saopin + ytu;         %�ŵ�����998
y_FH5_3_1_FH7_2 = y1 + y2 + FH5_3_1 + FH7_2 + saopin + ytu;         %�ŵ�����999
y_FH5_3_1_FH8_2 = y1 + y2 + FH5_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����1000
y_FH5_3_1_FH9_2 = y1 + y2 + FH5_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����1001

y_FH5_3_2_FH6_2 = y1 + y2 + FH5_3_2 + FH6_2 + saopin + ytu;         %�ŵ�����1002
y_FH5_3_2_FH7_2 = y1 + y2 + FH5_3_2 + FH7_2 + saopin + ytu;         %�ŵ�����1003
y_FH5_3_2_FH8_2 = y1 + y2 + FH5_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����1004
y_FH5_3_2_FH9_2 = y1 + y2 + FH5_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����1005

%% FH6ϵ����FH7...FH9�����
y_FH6_1_FH7_2 = y1 + y2 + FH6_1 + FH7_2 + saopin + ytu;             %�ŵ�����1006
y_FH6_1_FH8_2 = y1 + y2 + FH6_1 + FH8_2 + saopin + ytu;             %�ŵ�����1007
y_FH6_1_FH9_2 = y1 + y2 + FH6_1 + FH9_2 + saopin + ytu;             %�ŵ�����1008

y_FH6_1_1_FH7_2 = y1 + y2 + FH6_1_1 + FH7_2 + saopin + ytu;         %�ŵ�����1009
y_FH6_1_1_FH8_2 = y1 + y2 + FH6_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����1010
y_FH6_1_1_FH9_2 = y1 + y2 + FH6_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����1011

y_FH6_1_2_FH7_2 = y1 + y2 + FH6_1_2 + FH7_2 + saopin + ytu;         %�ŵ�����1012
y_FH6_1_2_FH8_2 = y1 + y2 + FH6_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����1013
y_FH6_1_2_FH9_2 = y1 + y2 + FH6_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����1014

y_FH6_2_FH7_2 = y1 + y2 + FH6_2 + FH7_2 + saopin + ytu;             %�ŵ�����1015
y_FH6_2_FH8_2 = y1 + y2 + FH6_2 + FH8_2 + saopin + ytu;             %�ŵ�����1016
y_FH6_2_FH9_2 = y1 + y2 + FH6_2 + FH9_2 + saopin + ytu;             %�ŵ�����1017

y_FH6_2_1_FH7_2 = y1 + y2 + FH6_2_1 + FH7_2 + saopin + ytu;         %�ŵ�����1018
y_FH6_2_1_FH8_2 = y1 + y2 + FH6_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����1019
y_FH6_2_1_FH9_2 = y1 + y2 + FH6_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����1020

y_FH6_2_2_FH7_2 = y1 + y2 + FH6_2_2 + FH7_2 + saopin + ytu;         %�ŵ�����1021
y_FH6_2_2_FH8_2 = y1 + y2 + FH6_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����1022
y_FH6_2_2_FH9_2 = y1 + y2 + FH6_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����1023

y_FH6_3_FH7_2 = y1 + y2 + FH6_3 + FH7_2 + saopin + ytu;             %�ŵ�����1024
y_FH6_3_FH8_2 = y1 + y2 + FH6_3 + FH8_2 + saopin + ytu;             %�ŵ�����1025
y_FH6_3_FH9_2 = y1 + y2 + FH6_3 + FH9_2 + saopin + ytu;             %�ŵ�����1026

y_FH6_3_1_FH7_2 = y1 + y2 + FH6_3_1 + FH7_2 + saopin + ytu;         %�ŵ�����1027
y_FH6_3_1_FH8_2 = y1 + y2 + FH6_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����1028
y_FH6_3_1_FH9_2 = y1 + y2 + FH6_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����1029

y_FH6_3_2_FH7_2 = y1 + y2 + FH6_3_2 + FH7_2 + saopin + ytu;         %�ŵ�����1030
y_FH6_3_2_FH8_2 = y1 + y2 + FH6_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����1031
y_FH6_3_2_FH9_2 = y1 + y2 + FH6_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����1032

%% FH7ϵ����FH8...FH9�����
y_FH7_1_FH8_2 = y1 + y2 + FH7_1 + FH8_2 + saopin + ytu;             %�ŵ�����1033
y_FH7_1_FH9_2 = y1 + y2 + FH7_1 + FH9_2 + saopin + ytu;             %�ŵ�����1034

y_FH7_1_1_FH8_2 = y1 + y2 + FH7_1_1 + FH8_2 + saopin + ytu;         %�ŵ�����1035
y_FH7_1_1_FH9_2 = y1 + y2 + FH7_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����1036

y_FH7_1_2_FH8_2 = y1 + y2 + FH7_1_2 + FH8_2 + saopin + ytu;         %�ŵ�����1037
y_FH7_1_2_FH9_2 = y1 + y2 + FH7_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����1038

y_FH7_2_FH8_2 = y1 + y2 + FH7_2 + FH8_2 + saopin + ytu;             %�ŵ�����1039
y_FH7_2_FH9_2 = y1 + y2 + FH7_2 + FH9_2 + saopin + ytu;             %�ŵ�����1040

y_FH7_2_1_FH8_2 = y1 + y2 + FH7_2_1 + FH8_2 + saopin + ytu;         %�ŵ�����1041
y_FH7_2_1_FH9_2 = y1 + y2 + FH7_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����1042

y_FH7_2_2_FH8_2 = y1 + y2 + FH7_2_2 + FH8_2 + saopin + ytu;         %�ŵ�����1043
y_FH7_2_2_FH9_2 = y1 + y2 + FH7_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����1044

y_FH7_3_FH8_2 = y1 + y2 + FH7_3 + FH8_2 + saopin + ytu;             %�ŵ�����1045
y_FH7_3_FH9_2 = y1 + y2 + FH7_3 + FH9_2 + saopin + ytu;             %�ŵ�����1046

y_FH7_3_1_FH8_2 = y1 + y2 + FH7_3_1 + FH8_2 + saopin + ytu;         %�ŵ�����1047
y_FH7_3_1_FH9_2 = y1 + y2 + FH7_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����1048

y_FH7_3_2_FH8_2 = y1 + y2 + FH7_3_2 + FH8_2 + saopin + ytu;         %�ŵ�����1049
y_FH7_3_2_FH9_2 = y1 + y2 + FH7_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����1050

%% FH8ϵ����FH9�����
y_FH8_1_FH9_2 = y1 + y2 + FH8_1 + FH9_2 + saopin + ytu;             %�ŵ�����1051

y_FH8_1_1_FH9_2 = y1 + y2 + FH8_1_1 + FH9_2 + saopin + ytu;         %�ŵ�����1052

y_FH8_1_2_FH9_2 = y1 + y2 + FH8_1_2 + FH9_2 + saopin + ytu;         %�ŵ�����1053

y_FH8_2_FH9_2 = y1 + y2 + FH8_2 + FH9_2 + saopin + ytu;             %�ŵ�����1054

y_FH8_2_1_FH9_2 = y1 + y2 + FH8_2_1 + FH9_2 + saopin + ytu;         %�ŵ�����1055

y_FH8_2_2_FH9_2 = y1 + y2 + FH8_2_2 + FH9_2 + saopin + ytu;         %�ŵ�����1056

y_FH8_3_FH9_2 = y1 + y2 + FH8_3 + FH9_2 + saopin + ytu;             %�ŵ�����1057

y_FH8_3_1_FH9_2 = y1 + y2 + FH8_3_1 + FH9_2 + saopin + ytu;         %�ŵ�����1058

y_FH8_3_2_FH9_2 = y1 + y2 + FH8_3_2 + FH9_2 + saopin + ytu;         %�ŵ�����1059


%% FH1ϵ����FH2��FH3...FH9�ĵ��������
y_FH1_1_FH2_2_1 = y1 + y2 + FH1_1 + FH2_2_1 + saopin + ytu;             %�ŵ�����1060
y_FH1_1_FH3_2_1 = y1 + y2 + FH1_1 + FH3_2_1 + saopin + ytu;             %�ŵ�����1061
y_FH1_1_FH4_2_1 = y1 + y2 + FH1_1 + FH4_2_1 + saopin + ytu;             %�ŵ�����1062
y_FH1_1_FH5_2_1 = y1 + y2 + FH1_1 + FH5_2_1 + saopin + ytu;             %�ŵ�����1063
y_FH1_1_FH6_2_1 = y1 + y2 + FH1_1 + FH6_2_1 + saopin + ytu;             %�ŵ�����1064
y_FH1_1_FH7_2_1 = y1 + y2 + FH1_1 + FH7_2_1 + saopin + ytu;             %�ŵ�����1065
y_FH1_1_FH8_2_1 = y1 + y2 + FH1_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1066
y_FH1_1_FH9_2_1 = y1 + y2 + FH1_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1067

y_FH1_1_1_FH2_2_1 = y1 + y2 + FH1_1_1 + FH2_2_1 + saopin + ytu;         %�ŵ�����1068
y_FH1_1_1_FH3_2_1 = y1 + y2 + FH1_1_1 + FH3_2_1 + saopin + ytu;         %�ŵ�����1069
y_FH1_1_1_FH4_2_1 = y1 + y2 + FH1_1_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1070
y_FH1_1_1_FH5_2_1 = y1 + y2 + FH1_1_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1071
y_FH1_1_1_FH6_2_1 = y1 + y2 + FH1_1_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1072
y_FH1_1_1_FH7_2_1 = y1 + y2 + FH1_1_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1073
y_FH1_1_1_FH8_2_1 = y1 + y2 + FH1_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1074
y_FH1_1_1_FH9_2_1 = y1 + y2 + FH1_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1075

y_FH1_1_2_FH2_2_1 = y1 + y2 + FH1_1_2 + FH2_2_1 + saopin + ytu;         %�ŵ�����1076
y_FH1_1_2_FH3_2_1 = y1 + y2 + FH1_1_2 + FH3_2_1 + saopin + ytu;         %�ŵ�����1077
y_FH1_1_2_FH4_2_1 = y1 + y2 + FH1_1_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1078
y_FH1_1_2_FH5_2_1 = y1 + y2 + FH1_1_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1079
y_FH1_1_2_FH6_2_1 = y1 + y2 + FH1_1_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1080
y_FH1_1_2_FH7_2_1 = y1 + y2 + FH1_1_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1081
y_FH1_1_2_FH8_2_1 = y1 + y2 + FH1_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1082
y_FH1_1_2_FH9_2_1 = y1 + y2 + FH1_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1083

y_FH1_2_FH2_2_1 = y1 + y2 + FH1_2 + FH2_2_1 + saopin + ytu;             %�ŵ�����1084
y_FH1_2_FH3_2_1 = y1 + y2 + FH1_2 + FH3_2_1 + saopin + ytu;             %�ŵ�����1085
y_FH1_2_FH4_2_1 = y1 + y2 + FH1_2 + FH4_2_1 + saopin + ytu;             %�ŵ�����1086
y_FH1_2_FH5_2_1 = y1 + y2 + FH1_2 + FH5_2_1 + saopin + ytu;             %�ŵ�����1087
y_FH1_2_FH6_2_1 = y1 + y2 + FH1_2 + FH6_2_1 + saopin + ytu;             %�ŵ�����1088
y_FH1_2_FH7_2_1 = y1 + y2 + FH1_2 + FH7_2_1 + saopin + ytu;             %�ŵ�����1089
y_FH1_2_FH8_2_1 = y1 + y2 + FH1_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1090
y_FH1_2_FH9_2_1 = y1 + y2 + FH1_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1091

y_FH1_2_1_FH2_2_1 = y1 + y2 + FH1_2_1 + FH2_2_1 + saopin + ytu;         %�ŵ�����1092
y_FH1_2_1_FH3_2_1 = y1 + y2 + FH1_2_1 + FH3_2_1 + saopin + ytu;         %�ŵ�����1093
y_FH1_2_1_FH4_2_1 = y1 + y2 + FH1_2_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1094
y_FH1_2_1_FH5_2_1 = y1 + y2 + FH1_2_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1095
y_FH1_2_1_FH6_2_1 = y1 + y2 + FH1_2_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1096
y_FH1_2_1_FH7_2_1 = y1 + y2 + FH1_2_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1097
y_FH1_2_1_FH8_2_1 = y1 + y2 + FH1_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1098
y_FH1_2_1_FH9_2_1 = y1 + y2 + FH1_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1099

y_FH1_2_2_FH2_2_1 = y1 + y2 + FH1_2_2 + FH2_2_1 + saopin + ytu;         %�ŵ�����1100
y_FH1_2_2_FH3_2_1 = y1 + y2 + FH1_2_2 + FH3_2_1 + saopin + ytu;         %�ŵ�����1101
y_FH1_2_2_FH4_2_1 = y1 + y2 + FH1_2_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1102
y_FH1_2_2_FH5_2_1 = y1 + y2 + FH1_2_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1103
y_FH1_2_2_FH6_2_1 = y1 + y2 + FH1_2_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1104
y_FH1_2_2_FH7_2_1 = y1 + y2 + FH1_2_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1105
y_FH1_2_2_FH8_2_1 = y1 + y2 + FH1_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1106
y_FH1_2_2_FH9_2_1 = y1 + y2 + FH1_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1107

y_FH1_3_FH2_2_1 = y1 + y2 + FH1_3 + FH2_2_1 + saopin + ytu;             %�ŵ�����1108
y_FH1_3_FH3_2_1 = y1 + y2 + FH1_3 + FH3_2_1 + saopin + ytu;             %�ŵ�����1109
y_FH1_3_FH4_2_1 = y1 + y2 + FH1_3 + FH4_2_1 + saopin + ytu;             %�ŵ�����1110
y_FH1_3_FH5_2_1 = y1 + y2 + FH1_3 + FH5_2_1 + saopin + ytu;             %�ŵ�����1111
y_FH1_3_FH6_2_1 = y1 + y2 + FH1_3 + FH6_2_1 + saopin + ytu;             %�ŵ�����1112
y_FH1_3_FH7_2_1 = y1 + y2 + FH1_3 + FH7_2_1 + saopin + ytu;             %�ŵ�����1113
y_FH1_3_FH8_2_1 = y1 + y2 + FH1_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1114
y_FH1_3_FH9_2_1 = y1 + y2 + FH1_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1115

y_FH1_3_1_FH2_2_1 = y1 + y2 + FH1_3_1 + FH2_2_1 + saopin + ytu;         %�ŵ�����1116
y_FH1_3_1_FH3_2_1 = y1 + y2 + FH1_3_1 + FH3_2_1 + saopin + ytu;         %�ŵ�����1117
y_FH1_3_1_FH4_2_1 = y1 + y2 + FH1_3_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1118
y_FH1_3_1_FH5_2_1 = y1 + y2 + FH1_3_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1119
y_FH1_3_1_FH6_2_1 = y1 + y2 + FH1_3_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1120
y_FH1_3_1_FH7_2_1 = y1 + y2 + FH1_3_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1121
y_FH1_3_1_FH8_2_1 = y1 + y2 + FH1_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1122
y_FH1_3_1_FH9_2_1 = y1 + y2 + FH1_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1123

y_FH1_3_2_FH2_2_1 = y1 + y2 + FH1_3_2 + FH2_2_1 + saopin + ytu;         %�ŵ�����1124
y_FH1_3_2_FH3_2_1 = y1 + y2 + FH1_3_2 + FH3_2_1 + saopin + ytu;         %�ŵ�����1125
y_FH1_3_2_FH4_2_1 = y1 + y2 + FH1_3_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1126
y_FH1_3_2_FH5_2_1 = y1 + y2 + FH1_3_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1127
y_FH1_3_2_FH6_2_1 = y1 + y2 + FH1_3_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1129
y_FH1_3_2_FH7_2_1 = y1 + y2 + FH1_3_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1130
y_FH1_3_2_FH8_2_1 = y1 + y2 + FH1_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1131
y_FH1_3_2_FH9_2_1 = y1 + y2 + FH1_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1132

%% FH2ϵ����FH3...FH9�����
y_FH2_1_FH3_2_1 = y1 + y2 + FH2_1 + FH3_2_1 + saopin + ytu;             %�ŵ�����1133
y_FH2_1_FH4_2_1 = y1 + y2 + FH2_1 + FH4_2_1 + saopin + ytu;             %�ŵ�����1134
y_FH2_1_FH5_2_1 = y1 + y2 + FH2_1 + FH5_2_1 + saopin + ytu;             %�ŵ�����1135
y_FH2_1_FH6_2_1 = y1 + y2 + FH2_1 + FH6_2_1 + saopin + ytu;             %�ŵ�����1136
y_FH2_1_FH7_2_1 = y1 + y2 + FH2_1 + FH7_2_1 + saopin + ytu;             %�ŵ�����1137
y_FH2_1_FH8_2_1 = y1 + y2 + FH2_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1138
y_FH2_1_FH9_2_1 = y1 + y2 + FH2_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1139

y_FH2_1_1_FH3_2_1 = y1 + y2 + FH2_1_1 + FH3_2_1 + saopin + ytu;         %�ŵ�����1140
y_FH2_1_1_FH4_2_1 = y1 + y2 + FH2_1_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1141
y_FH2_1_1_FH5_2_1 = y1 + y2 + FH2_1_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1142
y_FH2_1_1_FH6_2_1 = y1 + y2 + FH2_1_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1143
y_FH2_1_1_FH7_2_1 = y1 + y2 + FH2_1_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1144
y_FH2_1_1_FH8_2_1 = y1 + y2 + FH2_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1145
y_FH2_1_1_FH9_2_1 = y1 + y2 + FH2_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1146

y_FH2_1_2_FH3_2_1 = y1 + y2 + FH2_1_2 + FH3_2_1 + saopin + ytu;         %�ŵ�����1147
y_FH2_1_2_FH4_2_1 = y1 + y2 + FH2_1_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1148
y_FH2_1_2_FH5_2_1 = y1 + y2 + FH2_1_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1149
y_FH2_1_2_FH6_2_1 = y1 + y2 + FH2_1_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1150
y_FH2_1_2_FH7_2_1 = y1 + y2 + FH2_1_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1151
y_FH2_1_2_FH8_2_1 = y1 + y2 + FH2_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1152
y_FH2_1_2_FH9_2_1 = y1 + y2 + FH2_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1153

y_FH2_2_FH3_2_1 = y1 + y2 + FH2_2 + FH3_2_1 + saopin + ytu;             %�ŵ�����1154
y_FH2_2_FH4_2_1 = y1 + y2 + FH2_2 + FH4_2_1 + saopin + ytu;             %�ŵ�����1155
y_FH2_2_FH5_2_1 = y1 + y2 + FH2_2 + FH5_2_1 + saopin + ytu;             %�ŵ�����1156
y_FH2_2_FH6_2_1 = y1 + y2 + FH2_2 + FH6_2_1 + saopin + ytu;             %�ŵ�����1157
y_FH2_2_FH7_2_1 = y1 + y2 + FH2_2 + FH7_2_1 + saopin + ytu;             %�ŵ�����1158
y_FH2_2_FH8_2_1 = y1 + y2 + FH2_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1159
y_FH2_2_FH9_2_1 = y1 + y2 + FH2_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1160

y_FH2_2_1_FH3_2_1 = y1 + y2 + FH2_2_1 + FH3_2_1 + saopin + ytu;         %�ŵ�����1161
y_FH2_2_1_FH4_2_1 = y1 + y2 + FH2_2_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1162
y_FH2_2_1_FH5_2_1 = y1 + y2 + FH2_2_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1163
y_FH2_2_1_FH6_2_1 = y1 + y2 + FH2_2_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1164
y_FH2_2_1_FH7_2_1 = y1 + y2 + FH2_2_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1165
y_FH2_2_1_FH8_2_1 = y1 + y2 + FH2_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1166
y_FH2_2_1_FH9_2_1 = y1 + y2 + FH2_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1167

y_FH2_2_2_FH3_2_1 = y1 + y2 + FH2_2_2 + FH3_2_1 + saopin + ytu;         %�ŵ�����1168
y_FH2_2_2_FH4_2_1 = y1 + y2 + FH2_2_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1169
y_FH2_2_2_FH5_2_1 = y1 + y2 + FH2_2_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1170
y_FH2_2_2_FH6_2_1 = y1 + y2 + FH2_2_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1171
y_FH2_2_2_FH7_2_1 = y1 + y2 + FH2_2_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1172
y_FH2_2_2_FH8_2_1 = y1 + y2 + FH2_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1173
y_FH2_2_2_FH9_2_1 = y1 + y2 + FH2_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1174

y_FH2_3_FH3_2_1 = y1 + y2 + FH2_3 + FH3_2_1 + saopin + ytu;             %�ŵ�����1175
y_FH2_3_FH4_2_1 = y1 + y2 + FH2_3 + FH4_2_1 + saopin + ytu;             %�ŵ�����1176
y_FH2_3_FH5_2_1 = y1 + y2 + FH2_3 + FH5_2_1 + saopin + ytu;             %�ŵ�����1177
y_FH2_3_FH6_2_1 = y1 + y2 + FH2_3 + FH6_2_1 + saopin + ytu;             %�ŵ�����1178
y_FH2_3_FH7_2_1 = y1 + y2 + FH2_3 + FH7_2_1 + saopin + ytu;             %�ŵ�����1179
y_FH2_3_FH8_2_1 = y1 + y2 + FH2_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1180
y_FH2_3_FH9_2_1 = y1 + y2 + FH2_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1181

y_FH2_3_1_FH3_2_1 = y1 + y2 + FH2_3_1 + FH3_2_1 + saopin + ytu;         %�ŵ�����1182
y_FH2_3_1_FH4_2_1 = y1 + y2 + FH2_3_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1183
y_FH2_3_1_FH5_2_1 = y1 + y2 + FH2_3_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1184
y_FH2_3_1_FH6_2_1 = y1 + y2 + FH2_3_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1185
y_FH2_3_1_FH7_2_1 = y1 + y2 + FH2_3_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1186
y_FH2_3_1_FH8_2_1 = y1 + y2 + FH2_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1187
y_FH2_3_1_FH9_2_1 = y1 + y2 + FH2_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1188

y_FH2_3_2_FH3_2_1 = y1 + y2 + FH2_3_2 + FH3_2_1 + saopin + ytu;         %�ŵ�����1189
y_FH2_3_2_FH4_2_1 = y1 + y2 + FH2_3_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1190
y_FH2_3_2_FH5_2_1 = y1 + y2 + FH2_3_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1200
y_FH2_3_2_FH6_2_1 = y1 + y2 + FH2_3_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1201
y_FH2_3_2_FH7_2_1 = y1 + y2 + FH2_3_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1202
y_FH2_3_2_FH8_2_1 = y1 + y2 + FH2_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1203
y_FH2_3_2_FH9_2_1 = y1 + y2 + FH2_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1204

%% FH3ϵ����FH4...FH9�����
y_FH3_1_FH4_2_1 = y1 + y2 + FH3_1 + FH4_2_1 + saopin + ytu;             %�ŵ�����1205
y_FH3_1_FH5_2_1 = y1 + y2 + FH3_1 + FH5_2_1 + saopin + ytu;             %�ŵ�����1206
y_FH3_1_FH6_2_1 = y1 + y2 + FH3_1 + FH6_2_1 + saopin + ytu;             %�ŵ�����1207
y_FH3_1_FH7_2_1 = y1 + y2 + FH3_1 + FH7_2_1 + saopin + ytu;             %�ŵ�����1208
y_FH3_1_FH8_2_1 = y1 + y2 + FH3_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1209
y_FH3_1_FH9_2_1 = y1 + y2 + FH3_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1210

y_FH3_1_1_FH4_2_1 = y1 + y2 + FH3_1_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1211
y_FH3_1_1_FH5_2_1 = y1 + y2 + FH3_1_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1212
y_FH3_1_1_FH6_2_1 = y1 + y2 + FH3_1_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1213
y_FH3_1_1_FH7_2_1 = y1 + y2 + FH3_1_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1214
y_FH3_1_1_FH8_2_1 = y1 + y2 + FH3_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1215
y_FH3_1_1_FH9_2_1 = y1 + y2 + FH3_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1216

y_FH3_1_2_FH4_2_1 = y1 + y2 + FH3_1_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1217
y_FH3_1_2_FH5_2_1 = y1 + y2 + FH3_1_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1218
y_FH3_1_2_FH6_2_1 = y1 + y2 + FH3_1_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1219
y_FH3_1_2_FH7_2_1 = y1 + y2 + FH3_1_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1220
y_FH3_1_2_FH8_2_1 = y1 + y2 + FH3_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1221
y_FH3_1_2_FH9_2_1 = y1 + y2 + FH3_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1222

y_FH3_2_FH4_2_1 = y1 + y2 + FH3_2 + FH4_2_1 + saopin + ytu;             %�ŵ�����1223
y_FH3_2_FH5_2_1 = y1 + y2 + FH3_2 + FH5_2_1 + saopin + ytu;             %�ŵ�����1224
y_FH3_2_FH6_2_1 = y1 + y2 + FH3_2 + FH6_2_1 + saopin + ytu;             %�ŵ�����1225
y_FH3_2_FH7_2_1 = y1 + y2 + FH3_2 + FH7_2_1 + saopin + ytu;             %�ŵ�����1226
y_FH3_2_FH8_2_1 = y1 + y2 + FH3_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1227
y_FH3_2_FH9_2_1 = y1 + y2 + FH3_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1228

y_FH3_2_1_FH4_2_1 = y1 + y2 + FH3_2_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1229
y_FH3_2_1_FH5_2_1 = y1 + y2 + FH3_2_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1230
y_FH3_2_1_FH6_2_1 = y1 + y2 + FH3_2_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1231
y_FH3_2_1_FH7_2_1 = y1 + y2 + FH3_2_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1232
y_FH3_2_1_FH8_2_1 = y1 + y2 + FH3_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1234
y_FH3_2_1_FH9_2_1 = y1 + y2 + FH3_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1235

y_FH3_2_2_FH4_2_1 = y1 + y2 + FH3_2_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1236
y_FH3_2_2_FH5_2_1 = y1 + y2 + FH3_2_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1237
y_FH3_2_2_FH6_2_1 = y1 + y2 + FH3_2_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1238
y_FH3_2_2_FH7_2_1 = y1 + y2 + FH3_2_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1239
y_FH3_2_2_FH8_2_1 = y1 + y2 + FH3_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1240
y_FH3_2_2_FH9_2_1 = y1 + y2 + FH3_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1241

y_FH3_3_FH4_2_1 = y1 + y2 + FH3_3 + FH4_2_1 + saopin + ytu;             %�ŵ�����1242
y_FH3_3_FH5_2_1 = y1 + y2 + FH3_3 + FH5_2_1 + saopin + ytu;             %�ŵ�����1243
y_FH3_3_FH6_2_1 = y1 + y2 + FH3_3 + FH6_2_1 + saopin + ytu;             %�ŵ�����1244
y_FH3_3_FH7_2_1 = y1 + y2 + FH3_3 + FH7_2_1 + saopin + ytu;             %�ŵ�����1245
y_FH3_3_FH8_2_1 = y1 + y2 + FH3_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1246
y_FH3_3_FH9_2_1 = y1 + y2 + FH3_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1247

y_FH3_3_1_FH4_2_1 = y1 + y2 + FH3_3_1 + FH4_2_1 + saopin + ytu;         %�ŵ�����1248
y_FH3_3_1_FH5_2_1 = y1 + y2 + FH3_3_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1249
y_FH3_3_1_FH6_2_1 = y1 + y2 + FH3_3_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1250
y_FH3_3_1_FH7_2_1 = y1 + y2 + FH3_3_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1251
y_FH3_3_1_FH8_2_1 = y1 + y2 + FH3_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1252
y_FH3_3_1_FH9_2_1 = y1 + y2 + FH3_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1253

y_FH3_3_2_FH4_2_1 = y1 + y2 + FH3_3_2 + FH4_2_1 + saopin + ytu;         %�ŵ�����1254
y_FH3_3_2_FH5_2_1 = y1 + y2 + FH3_3_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1255
y_FH3_3_2_FH6_2_1 = y1 + y2 + FH3_3_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1256
y_FH3_3_2_FH7_2_1 = y1 + y2 + FH3_3_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1257
y_FH3_3_2_FH8_2_1 = y1 + y2 + FH3_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1258
y_FH3_3_2_FH9_2_1 = y1 + y2 + FH3_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1259

%% FH4ϵ����FH5...FH9�����
y_FH4_1_FH5_2_1 = y1 + y2 + FH4_1 + FH5_2_1 + saopin + ytu;             %�ŵ�����1260
y_FH4_1_FH6_2_1 = y1 + y2 + FH4_1 + FH6_2_1 + saopin + ytu;             %�ŵ�����1261
y_FH4_1_FH7_2_1 = y1 + y2 + FH4_1 + FH7_2_1 + saopin + ytu;             %�ŵ�����1262
y_FH4_1_FH8_2_1 = y1 + y2 + FH4_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1263
y_FH4_1_FH9_2_1 = y1 + y2 + FH4_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1264

y_FH4_1_1_FH5_2_1 = y1 + y2 + FH4_1_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1265
y_FH4_1_1_FH6_2_1 = y1 + y2 + FH4_1_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1266
y_FH4_1_1_FH7_2_1 = y1 + y2 + FH4_1_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1267
y_FH4_1_1_FH8_2_1 = y1 + y2 + FH4_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1268
y_FH4_1_1_FH9_2_1 = y1 + y2 + FH4_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1269

y_FH4_1_2_FH5_2_1 = y1 + y2 + FH4_1_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1270
y_FH4_1_2_FH6_2_1 = y1 + y2 + FH4_1_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1271
y_FH4_1_2_FH7_2_1 = y1 + y2 + FH4_1_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1272
y_FH4_1_2_FH8_2_1 = y1 + y2 + FH4_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1273
y_FH4_1_2_FH9_2_1 = y1 + y2 + FH4_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1274

y_FH4_2_FH5_2_1 = y1 + y2 + FH4_2 + FH5_2_1 + saopin + ytu;             %�ŵ�����1275
y_FH4_2_FH6_2_1 = y1 + y2 + FH4_2 + FH6_2_1 + saopin + ytu;             %�ŵ�����1276
y_FH4_2_FH7_2_1 = y1 + y2 + FH4_2 + FH7_2_1 + saopin + ytu;             %�ŵ�����1277
y_FH4_2_FH8_2_1 = y1 + y2 + FH4_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1278
y_FH4_2_FH9_2_1 = y1 + y2 + FH4_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1279

y_FH4_2_1_FH5_2_1 = y1 + y2 + FH4_2_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1280
y_FH4_2_1_FH6_2_1 = y1 + y2 + FH4_2_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1281
y_FH4_2_1_FH7_2_1 = y1 + y2 + FH4_2_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1282
y_FH4_2_1_FH8_2_1 = y1 + y2 + FH4_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1283
y_FH4_2_1_FH9_2_1 = y1 + y2 + FH4_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1284

y_FH4_2_2_FH5_2_1 = y1 + y2 + FH4_2_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1285
y_FH4_2_2_FH6_2_1 = y1 + y2 + FH4_2_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1286
y_FH4_2_2_FH7_2_1 = y1 + y2 + FH4_2_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1287
y_FH4_2_2_FH8_2_1 = y1 + y2 + FH4_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1288
y_FH4_2_2_FH9_2_1 = y1 + y2 + FH4_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1289

y_FH4_3_FH5_2_1 = y1 + y2 + FH4_3 + FH5_2_1 + saopin + ytu;             %�ŵ�����1290
y_FH4_3_FH6_2_1 = y1 + y2 + FH4_3 + FH6_2_1 + saopin + ytu;             %�ŵ�����1291
y_FH4_3_FH7_2_1 = y1 + y2 + FH4_3 + FH7_2_1 + saopin + ytu;             %�ŵ�����1292
y_FH4_3_FH8_2_1 = y1 + y2 + FH4_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1293
y_FH4_3_FH9_2_1 = y1 + y2 + FH4_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1294

y_FH4_3_1_FH5_2_1 = y1 + y2 + FH4_3_1 + FH5_2_1 + saopin + ytu;         %�ŵ�����1295
y_FH4_3_1_FH6_2_1 = y1 + y2 + FH4_3_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1296
y_FH4_3_1_FH7_2_1 = y1 + y2 + FH4_3_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1297
y_FH4_3_1_FH8_2_1 = y1 + y2 + FH4_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1298
y_FH4_3_1_FH9_2_1 = y1 + y2 + FH4_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1299

y_FH4_3_2_FH5_2_1 = y1 + y2 + FH4_3_2 + FH5_2_1 + saopin + ytu;         %�ŵ�����1300
y_FH4_3_2_FH6_2_1 = y1 + y2 + FH4_3_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1301
y_FH4_3_2_FH7_2_1 = y1 + y2 + FH4_3_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1302
y_FH4_3_2_FH8_2_1 = y1 + y2 + FH4_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1303
y_FH4_3_2_FH9_2_1 = y1 + y2 + FH4_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1304

%% FH5ϵ����FH6...FH9�����
y_FH5_1_FH6_2_1 = y1 + y2 + FH5_1 + FH6_2_1 + saopin + ytu;             %�ŵ�����1305
y_FH5_1_FH7_2_1 = y1 + y2 + FH5_1 + FH7_2_1 + saopin + ytu;             %�ŵ�����1306
y_FH5_1_FH8_2_1 = y1 + y2 + FH5_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1307
y_FH5_1_FH9_2_1 = y1 + y2 + FH5_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1308

y_FH5_1_1_FH6_2_1 = y1 + y2 + FH5_1_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1309
y_FH5_1_1_FH7_2_1 = y1 + y2 + FH5_1_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1310
y_FH5_1_1_FH8_2_1 = y1 + y2 + FH5_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1311
y_FH5_1_1_FH9_2_1 = y1 + y2 + FH5_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1312

y_FH5_1_2_FH6_2_1 = y1 + y2 + FH5_1_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1313
y_FH5_1_2_FH7_2_1 = y1 + y2 + FH5_1_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1314
y_FH5_1_2_FH8_2_1 = y1 + y2 + FH5_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1315
y_FH5_1_2_FH9_2_1 = y1 + y2 + FH5_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1316

y_FH5_2_FH6_2_1 = y1 + y2 + FH5_2 + FH6_2_1 + saopin + ytu;             %�ŵ�����1317
y_FH5_2_FH7_2_1 = y1 + y2 + FH5_2 + FH7_2_1 + saopin + ytu;             %�ŵ�����1318
y_FH5_2_FH8_2_1 = y1 + y2 + FH5_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1319
y_FH5_2_FH9_2_1 = y1 + y2 + FH5_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1320

y_FH5_2_1_FH6_2_1 = y1 + y2 + FH5_2_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1321
y_FH5_2_1_FH7_2_1 = y1 + y2 + FH5_2_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1322
y_FH5_2_1_FH8_2_1 = y1 + y2 + FH5_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1323
y_FH5_2_1_FH9_2_1 = y1 + y2 + FH5_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1324

y_FH5_2_2_FH6_2_1 = y1 + y2 + FH5_2_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1325
y_FH5_2_2_FH7_2_1 = y1 + y2 + FH5_2_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1326
y_FH5_2_2_FH8_2_1 = y1 + y2 + FH5_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1327
y_FH5_2_2_FH9_2_1 = y1 + y2 + FH5_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1328

y_FH5_3_FH6_2_1 = y1 + y2 + FH5_3 + FH6_2_1 + saopin + ytu;             %�ŵ�����1329
y_FH5_3_FH7_2_1 = y1 + y2 + FH5_3 + FH7_2_1 + saopin + ytu;             %�ŵ�����1330
y_FH5_3_FH8_2_1 = y1 + y2 + FH5_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1331
y_FH5_3_FH9_2_1 = y1 + y2 + FH5_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1332

y_FH5_3_1_FH6_2_1 = y1 + y2 + FH5_3_1 + FH6_2_1 + saopin + ytu;         %�ŵ�����1333
y_FH5_3_1_FH7_2_1 = y1 + y2 + FH5_3_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1334
y_FH5_3_1_FH8_2_1 = y1 + y2 + FH5_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1335
y_FH5_3_1_FH9_2_1 = y1 + y2 + FH5_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1336

y_FH5_3_2_FH6_2_1 = y1 + y2 + FH5_3_2 + FH6_2_1 + saopin + ytu;         %�ŵ�����1337
y_FH5_3_2_FH7_2_1 = y1 + y2 + FH5_3_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1338
y_FH5_3_2_FH8_2_1 = y1 + y2 + FH5_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1339
y_FH5_3_2_FH9_2_1 = y1 + y2 + FH5_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1340

%% FH6ϵ����FH7...FH9�����
y_FH6_1_FH7_2_1 = y1 + y2 + FH6_1 + FH7_2_1 + saopin + ytu;             %�ŵ�����1341
y_FH6_1_FH8_2_1 = y1 + y2 + FH6_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1342
y_FH6_1_FH9_2_1 = y1 + y2 + FH6_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1343

y_FH6_1_1_FH7_2_1 = y1 + y2 + FH6_1_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1344
y_FH6_1_1_FH8_2_1 = y1 + y2 + FH6_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1345
y_FH6_1_1_FH9_2_1 = y1 + y2 + FH6_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1346

y_FH6_1_2_FH7_2_1 = y1 + y2 + FH6_1_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1347
y_FH6_1_2_FH8_2_1 = y1 + y2 + FH6_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1348
y_FH6_1_2_FH9_2_1 = y1 + y2 + FH6_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1349

y_FH6_2_FH7_2_1 = y1 + y2 + FH6_2 + FH7_2_1 + saopin + ytu;             %�ŵ�����1350
y_FH6_2_FH8_2_1 = y1 + y2 + FH6_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1351
y_FH6_2_FH9_2_1 = y1 + y2 + FH6_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1352

y_FH6_2_1_FH7_2_1 = y1 + y2 + FH6_2_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1353
y_FH6_2_1_FH8_2_1 = y1 + y2 + FH6_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1354
y_FH6_2_1_FH9_2_1 = y1 + y2 + FH6_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1355

y_FH6_2_2_FH7_2_1 = y1 + y2 + FH6_2_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1356
y_FH6_2_2_FH8_2_1 = y1 + y2 + FH6_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1357
y_FH6_2_2_FH9_2_1 = y1 + y2 + FH6_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1358

y_FH6_3_FH7_2_1 = y1 + y2 + FH6_3 + FH7_2_1 + saopin + ytu;             %�ŵ�����1359
y_FH6_3_FH8_2_1 = y1 + y2 + FH6_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1360
y_FH6_3_FH9_2_1 = y1 + y2 + FH6_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1361

y_FH6_3_1_FH7_2_1 = y1 + y2 + FH6_3_1 + FH7_2_1 + saopin + ytu;         %�ŵ�����1362
y_FH6_3_1_FH8_2_1 = y1 + y2 + FH6_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1363
y_FH6_3_1_FH9_2_1 = y1 + y2 + FH6_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1364

y_FH6_3_2_FH7_2_1 = y1 + y2 + FH6_3_2 + FH7_2_1 + saopin + ytu;         %�ŵ�����1365
y_FH6_3_2_FH8_2_1 = y1 + y2 + FH6_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1366
y_FH6_3_2_FH9_2_1 = y1 + y2 + FH6_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1367

%% FH7ϵ����FH8...FH9�����
y_FH7_1_FH8_2_1 = y1 + y2 + FH7_1 + FH8_2_1 + saopin + ytu;             %�ŵ�����1368
y_FH7_1_FH9_2_1 = y1 + y2 + FH7_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1369

y_FH7_1_1_FH8_2_1 = y1 + y2 + FH7_1_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1370
y_FH7_1_1_FH9_2_1 = y1 + y2 + FH7_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1371

y_FH7_1_2_FH8_2_1 = y1 + y2 + FH7_1_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1372
y_FH7_1_2_FH9_2_1 = y1 + y2 + FH7_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1373

y_FH7_2_FH8_2_1 = y1 + y2 + FH7_2 + FH8_2_1 + saopin + ytu;             %�ŵ�����1374
y_FH7_2_FH9_2_1 = y1 + y2 + FH7_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1375

y_FH7_2_1_FH8_2_1 = y1 + y2 + FH7_2_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1376
y_FH7_2_1_FH9_2_1 = y1 + y2 + FH7_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1377

y_FH7_2_2_FH8_2_1 = y1 + y2 + FH7_2_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1378
y_FH7_2_2_FH9_2_1 = y1 + y2 + FH7_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1379

y_FH7_3_FH8_2_1 = y1 + y2 + FH7_3 + FH8_2_1 + saopin + ytu;             %�ŵ�����1380
y_FH7_3_FH9_2_1 = y1 + y2 + FH7_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1381

y_FH7_3_1_FH8_2_1 = y1 + y2 + FH7_3_1 + FH8_2_1 + saopin + ytu;         %�ŵ�����1382
y_FH7_3_1_FH9_2_1 = y1 + y2 + FH7_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1383

y_FH7_3_2_FH8_2_1 = y1 + y2 + FH7_3_2 + FH8_2_1 + saopin + ytu;         %�ŵ�����1384
y_FH7_3_2_FH9_2_1 = y1 + y2 + FH7_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1385

%% FH8ϵ����FH9�����
y_FH8_1_FH9_2_1 = y1 + y2 + FH8_1 + FH9_2_1 + saopin + ytu;             %�ŵ�����1376

y_FH8_1_1_FH9_2_1 = y1 + y2 + FH8_1_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1377

y_FH8_1_2_FH9_2_1 = y1 + y2 + FH8_1_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1378

y_FH8_2_FH9_2_1 = y1 + y2 + FH8_2 + FH9_2_1 + saopin + ytu;             %�ŵ�����1379

y_FH8_2_1_FH9_2_1 = y1 + y2 + FH8_2_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1380

y_FH8_2_2_FH9_2_1 = y1 + y2 + FH8_2_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1381

y_FH8_3_FH9_2_1 = y1 + y2 + FH8_3 + FH9_2_1 + saopin + ytu;             %�ŵ�����1382

y_FH8_3_1_FH9_2_1 = y1 + y2 + FH8_3_1 + FH9_2_1 + saopin + ytu;         %�ŵ�����1383

y_FH8_3_2_FH9_2_1 = y1 + y2 + FH8_3_2 + FH9_2_1 + saopin + ytu;         %�ŵ�����1384


%% FH1ϵ����FH2��FH3...FH9�ĵ��������
y_FH1_1_FH2_3 = y1 + y2 + FH1_1 + FH2_3 + saopin + ytu;             %�ŵ�����1385
y_FH1_1_FH3_3 = y1 + y2 + FH1_1 + FH3_3 + saopin + ytu;             %�ŵ�����1386
y_FH1_1_FH4_3 = y1 + y2 + FH1_1 + FH4_3 + saopin + ytu;             %�ŵ�����1387
y_FH1_1_FH5_3 = y1 + y2 + FH1_1 + FH5_3 + saopin + ytu;             %�ŵ�����1388
y_FH1_1_FH6_3 = y1 + y2 + FH1_1 + FH6_3 + saopin + ytu;             %�ŵ�����1389
y_FH1_1_FH7_3 = y1 + y2 + FH1_1 + FH7_3 + saopin + ytu;             %�ŵ�����1390
y_FH1_1_FH8_3 = y1 + y2 + FH1_1 + FH8_3 + saopin + ytu;             %�ŵ�����1391
y_FH1_1_FH9_3 = y1 + y2 + FH1_1 + FH9_3 + saopin + ytu;             %�ŵ�����1392

y_FH1_1_1_FH2_3 = y1 + y2 + FH1_1_1 + FH2_3 + saopin + ytu;         %�ŵ�����1393
y_FH1_1_1_FH3_3 = y1 + y2 + FH1_1_1 + FH3_3 + saopin + ytu;         %�ŵ�����1394
y_FH1_1_1_FH4_3 = y1 + y2 + FH1_1_1 + FH4_3 + saopin + ytu;         %�ŵ�����1395
y_FH1_1_1_FH5_3 = y1 + y2 + FH1_1_1 + FH5_3 + saopin + ytu;         %�ŵ�����1396
y_FH1_1_1_FH6_3 = y1 + y2 + FH1_1_1 + FH6_3 + saopin + ytu;         %�ŵ�����1397
y_FH1_1_1_FH7_3 = y1 + y2 + FH1_1_1 + FH7_3 + saopin + ytu;         %�ŵ�����1398
y_FH1_1_1_FH8_3 = y1 + y2 + FH1_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1399
y_FH1_1_1_FH9_3 = y1 + y2 + FH1_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1400

y_FH1_1_2_FH2_3 = y1 + y2 + FH1_1_2 + FH2_3 + saopin + ytu;         %�ŵ�����1401
y_FH1_1_2_FH3_3 = y1 + y2 + FH1_1_2 + FH3_3 + saopin + ytu;         %�ŵ�����1402
y_FH1_1_2_FH4_3 = y1 + y2 + FH1_1_2 + FH4_3 + saopin + ytu;         %�ŵ�����1403
y_FH1_1_2_FH5_3 = y1 + y2 + FH1_1_2 + FH5_3 + saopin + ytu;         %�ŵ�����1404
y_FH1_1_2_FH6_3 = y1 + y2 + FH1_1_2 + FH6_3 + saopin + ytu;         %�ŵ�����1405
y_FH1_1_2_FH7_3 = y1 + y2 + FH1_1_2 + FH7_3 + saopin + ytu;         %�ŵ�����1406
y_FH1_1_2_FH8_3 = y1 + y2 + FH1_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1407
y_FH1_1_2_FH9_3 = y1 + y2 + FH1_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1408

y_FH1_2_FH2_3 = y1 + y2 + FH1_2 + FH2_3 + saopin + ytu;             %�ŵ�����1409
y_FH1_2_FH3_3 = y1 + y2 + FH1_2 + FH3_3 + saopin + ytu;             %�ŵ�����1410
y_FH1_2_FH4_3 = y1 + y2 + FH1_2 + FH4_3 + saopin + ytu;             %�ŵ�����1411
y_FH1_2_FH5_3 = y1 + y2 + FH1_2 + FH5_3 + saopin + ytu;             %�ŵ�����1412
y_FH1_2_FH6_3 = y1 + y2 + FH1_2 + FH6_3 + saopin + ytu;             %�ŵ�����1413
y_FH1_2_FH7_3 = y1 + y2 + FH1_2 + FH7_3 + saopin + ytu;             %�ŵ�����1414
y_FH1_2_FH8_3 = y1 + y2 + FH1_2 + FH8_3 + saopin + ytu;             %�ŵ�����1415
y_FH1_2_FH9_3 = y1 + y2 + FH1_2 + FH9_3 + saopin + ytu;             %�ŵ�����1416

y_FH1_2_1_FH2_3 = y1 + y2 + FH1_2_1 + FH2_3 + saopin + ytu;         %�ŵ�����1417
y_FH1_2_1_FH3_3 = y1 + y2 + FH1_2_1 + FH3_3 + saopin + ytu;         %�ŵ�����1418
y_FH1_2_1_FH4_3 = y1 + y2 + FH1_2_1 + FH4_3 + saopin + ytu;         %�ŵ�����1419
y_FH1_2_1_FH5_3 = y1 + y2 + FH1_2_1 + FH5_3 + saopin + ytu;         %�ŵ�����1420
y_FH1_2_1_FH6_3 = y1 + y2 + FH1_2_1 + FH6_3 + saopin + ytu;         %�ŵ�����1421
y_FH1_2_1_FH7_3 = y1 + y2 + FH1_2_1 + FH7_3 + saopin + ytu;         %�ŵ�����1422
y_FH1_2_1_FH8_3 = y1 + y2 + FH1_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1423
y_FH1_2_1_FH9_3 = y1 + y2 + FH1_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1424

y_FH1_2_2_FH2_3 = y1 + y2 + FH1_2_2 + FH2_3 + saopin + ytu;         %�ŵ�����1425
y_FH1_2_2_FH3_3 = y1 + y2 + FH1_2_2 + FH3_3 + saopin + ytu;         %�ŵ�����1426
y_FH1_2_2_FH4_3 = y1 + y2 + FH1_2_2 + FH4_3 + saopin + ytu;         %�ŵ�����1427
y_FH1_2_2_FH5_3 = y1 + y2 + FH1_2_2 + FH5_3 + saopin + ytu;         %�ŵ�����1428
y_FH1_2_2_FH6_3 = y1 + y2 + FH1_2_2 + FH6_3 + saopin + ytu;         %�ŵ�����1429
y_FH1_2_2_FH7_3 = y1 + y2 + FH1_2_2 + FH7_3 + saopin + ytu;         %�ŵ�����1430
y_FH1_2_2_FH8_3 = y1 + y2 + FH1_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1431
y_FH1_2_2_FH9_3 = y1 + y2 + FH1_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1432

y_FH1_3_FH2_3 = y1 + y2 + FH1_3 + FH2_3 + saopin + ytu;             %�ŵ�����1433
y_FH1_3_FH3_3 = y1 + y2 + FH1_3 + FH3_3 + saopin + ytu;             %�ŵ�����1434
y_FH1_3_FH4_3 = y1 + y2 + FH1_3 + FH4_3 + saopin + ytu;             %�ŵ�����1435
y_FH1_3_FH5_3 = y1 + y2 + FH1_3 + FH5_3 + saopin + ytu;             %�ŵ�����1436
y_FH1_3_FH6_3 = y1 + y2 + FH1_3 + FH6_3 + saopin + ytu;             %�ŵ�����1437
y_FH1_3_FH7_3 = y1 + y2 + FH1_3 + FH7_3 + saopin + ytu;             %�ŵ�����1438
y_FH1_3_FH8_3 = y1 + y2 + FH1_3 + FH8_3 + saopin + ytu;             %�ŵ�����1439
y_FH1_3_FH9_3 = y1 + y2 + FH1_3 + FH9_3 + saopin + ytu;             %�ŵ�����1440

y_FH1_3_1_FH2_3 = y1 + y2 + FH1_3_1 + FH2_3 + saopin + ytu;         %�ŵ�����1441
y_FH1_3_1_FH3_3 = y1 + y2 + FH1_3_1 + FH3_3 + saopin + ytu;         %�ŵ�����1442
y_FH1_3_1_FH4_3 = y1 + y2 + FH1_3_1 + FH4_3 + saopin + ytu;         %�ŵ�����1443
y_FH1_3_1_FH5_3 = y1 + y2 + FH1_3_1 + FH5_3 + saopin + ytu;         %�ŵ�����1444
y_FH1_3_1_FH6_3 = y1 + y2 + FH1_3_1 + FH6_3 + saopin + ytu;         %�ŵ�����1445
y_FH1_3_1_FH7_3 = y1 + y2 + FH1_3_1 + FH7_3 + saopin + ytu;         %�ŵ�����1446
y_FH1_3_1_FH8_3 = y1 + y2 + FH1_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1447
y_FH1_3_1_FH9_3 = y1 + y2 + FH1_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1448

y_FH1_3_2_FH2_3 = y1 + y2 + FH1_3_2 + FH2_3 + saopin + ytu;         %�ŵ�����1449
y_FH1_3_2_FH3_3 = y1 + y2 + FH1_3_2 + FH3_3 + saopin + ytu;         %�ŵ�����1450
y_FH1_3_2_FH4_3 = y1 + y2 + FH1_3_2 + FH4_3 + saopin + ytu;         %�ŵ�����1451
y_FH1_3_2_FH5_3 = y1 + y2 + FH1_3_2 + FH5_3 + saopin + ytu;         %�ŵ�����1452
y_FH1_3_2_FH6_3 = y1 + y2 + FH1_3_2 + FH6_3 + saopin + ytu;         %�ŵ�����1453
y_FH1_3_2_FH7_3 = y1 + y2 + FH1_3_2 + FH7_3 + saopin + ytu;         %�ŵ�����1454
y_FH1_3_2_FH8_3 = y1 + y2 + FH1_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1455
y_FH1_3_2_FH9_3 = y1 + y2 + FH1_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1456

%% FH2ϵ����FH3...FH9�����
y_FH2_1_FH3_3 = y1 + y2 + FH2_1 + FH3_3 + saopin + ytu;             %�ŵ�����1457
y_FH2_1_FH4_3 = y1 + y2 + FH2_1 + FH4_3 + saopin + ytu;             %�ŵ�����1458
y_FH2_1_FH5_3 = y1 + y2 + FH2_1 + FH5_3 + saopin + ytu;             %�ŵ�����1459
y_FH2_1_FH6_3 = y1 + y2 + FH2_1 + FH6_3 + saopin + ytu;             %�ŵ�����1460
y_FH2_1_FH7_3 = y1 + y2 + FH2_1 + FH7_3 + saopin + ytu;             %�ŵ�����1461
y_FH2_1_FH8_3 = y1 + y2 + FH2_1 + FH8_3 + saopin + ytu;             %�ŵ�����1462
y_FH2_1_FH9_3 = y1 + y2 + FH2_1 + FH9_3 + saopin + ytu;             %�ŵ�����1463

y_FH2_1_1_FH3_3 = y1 + y2 + FH2_1_1 + FH3_3 + saopin + ytu;         %�ŵ�����1464
y_FH2_1_1_FH4_3 = y1 + y2 + FH2_1_1 + FH4_3 + saopin + ytu;         %�ŵ�����1465
y_FH2_1_1_FH5_3 = y1 + y2 + FH2_1_1 + FH5_3 + saopin + ytu;         %�ŵ�����1466
y_FH2_1_1_FH6_3 = y1 + y2 + FH2_1_1 + FH6_3 + saopin + ytu;         %�ŵ�����1467
y_FH2_1_1_FH7_3 = y1 + y2 + FH2_1_1 + FH7_3 + saopin + ytu;         %�ŵ�����1468
y_FH2_1_1_FH8_3 = y1 + y2 + FH2_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1469
y_FH2_1_1_FH9_3 = y1 + y2 + FH2_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1470

y_FH2_1_2_FH3_3 = y1 + y2 + FH2_1_2 + FH3_3 + saopin + ytu;         %�ŵ�����1471
y_FH2_1_2_FH4_3 = y1 + y2 + FH2_1_2 + FH4_3 + saopin + ytu;         %�ŵ�����1472
y_FH2_1_2_FH5_3 = y1 + y2 + FH2_1_2 + FH5_3 + saopin + ytu;         %�ŵ�����1473
y_FH2_1_2_FH6_3 = y1 + y2 + FH2_1_2 + FH6_3 + saopin + ytu;         %�ŵ�����1474
y_FH2_1_2_FH7_3 = y1 + y2 + FH2_1_2 + FH7_3 + saopin + ytu;         %�ŵ�����1475
y_FH2_1_2_FH8_3 = y1 + y2 + FH2_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1476
y_FH2_1_2_FH9_3 = y1 + y2 + FH2_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1477

y_FH2_2_FH3_3 = y1 + y2 + FH2_2 + FH3_3 + saopin + ytu;             %�ŵ�����1478
y_FH2_2_FH4_3 = y1 + y2 + FH2_2 + FH4_3 + saopin + ytu;             %�ŵ�����1479
y_FH2_2_FH5_3 = y1 + y2 + FH2_2 + FH5_3 + saopin + ytu;             %�ŵ�����1480
y_FH2_2_FH6_3 = y1 + y2 + FH2_2 + FH6_3 + saopin + ytu;             %�ŵ�����1481
y_FH2_2_FH7_3 = y1 + y2 + FH2_2 + FH7_3 + saopin + ytu;             %�ŵ�����1482
y_FH2_2_FH8_3 = y1 + y2 + FH2_2 + FH8_3 + saopin + ytu;             %�ŵ�����1483
y_FH2_2_FH9_3 = y1 + y2 + FH2_2 + FH9_3 + saopin + ytu;             %�ŵ�����1484

y_FH2_2_1_FH3_3 = y1 + y2 + FH2_2_1 + FH3_3 + saopin + ytu;         %�ŵ�����1485
y_FH2_2_1_FH4_3 = y1 + y2 + FH2_2_1 + FH4_3 + saopin + ytu;         %�ŵ�����1486
y_FH2_2_1_FH5_3 = y1 + y2 + FH2_2_1 + FH5_3 + saopin + ytu;         %�ŵ�����1487
y_FH2_2_1_FH6_3 = y1 + y2 + FH2_2_1 + FH6_3 + saopin + ytu;         %�ŵ�����1488
y_FH2_2_1_FH7_3 = y1 + y2 + FH2_2_1 + FH7_3 + saopin + ytu;         %�ŵ�����1489
y_FH2_2_1_FH8_3 = y1 + y2 + FH2_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1490
y_FH2_2_1_FH9_3 = y1 + y2 + FH2_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1491

y_FH2_2_2_FH3_3 = y1 + y2 + FH2_2_2 + FH3_3 + saopin + ytu;         %�ŵ�����1492
y_FH2_2_2_FH4_3 = y1 + y2 + FH2_2_2 + FH4_3 + saopin + ytu;         %�ŵ�����1493
y_FH2_2_2_FH5_3 = y1 + y2 + FH2_2_2 + FH5_3 + saopin + ytu;         %�ŵ�����1494
y_FH2_2_2_FH6_3 = y1 + y2 + FH2_2_2 + FH6_3 + saopin + ytu;         %�ŵ�����1495
y_FH2_2_2_FH7_3 = y1 + y2 + FH2_2_2 + FH7_3 + saopin + ytu;         %�ŵ�����1496
y_FH2_2_2_FH8_3 = y1 + y2 + FH2_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1497
y_FH2_2_2_FH9_3 = y1 + y2 + FH2_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1498

y_FH2_3_FH3_3 = y1 + y2 + FH2_3 + FH3_3 + saopin + ytu;             %�ŵ�����1499
y_FH2_3_FH4_3 = y1 + y2 + FH2_3 + FH4_3 + saopin + ytu;             %�ŵ�����1500
y_FH2_3_FH5_3 = y1 + y2 + FH2_3 + FH5_3 + saopin + ytu;             %�ŵ�����1501
y_FH2_3_FH6_3 = y1 + y2 + FH2_3 + FH6_3 + saopin + ytu;             %�ŵ�����1502
y_FH2_3_FH7_3 = y1 + y2 + FH2_3 + FH7_3 + saopin + ytu;             %�ŵ�����1503
y_FH2_3_FH8_3 = y1 + y2 + FH2_3 + FH8_3 + saopin + ytu;             %�ŵ�����1504
y_FH2_3_FH9_3 = y1 + y2 + FH2_3 + FH9_3 + saopin + ytu;             %�ŵ�����1505

y_FH2_3_1_FH3_3 = y1 + y2 + FH2_3_1 + FH3_3 + saopin + ytu;         %�ŵ�����1506
y_FH2_3_1_FH4_3 = y1 + y2 + FH2_3_1 + FH4_3 + saopin + ytu;         %�ŵ�����1507
y_FH2_3_1_FH5_3 = y1 + y2 + FH2_3_1 + FH5_3 + saopin + ytu;         %�ŵ�����1508
y_FH2_3_1_FH6_3 = y1 + y2 + FH2_3_1 + FH6_3 + saopin + ytu;         %�ŵ�����1509
y_FH2_3_1_FH7_3 = y1 + y2 + FH2_3_1 + FH7_3 + saopin + ytu;         %�ŵ�����1510
y_FH2_3_1_FH8_3 = y1 + y2 + FH2_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1511
y_FH2_3_1_FH9_3 = y1 + y2 + FH2_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1512

y_FH2_3_2_FH3_3 = y1 + y2 + FH2_3_2 + FH3_3 + saopin + ytu;         %�ŵ�����1513
y_FH2_3_2_FH4_3 = y1 + y2 + FH2_3_2 + FH4_3 + saopin + ytu;         %�ŵ�����1514
y_FH2_3_2_FH5_3 = y1 + y2 + FH2_3_2 + FH5_3 + saopin + ytu;         %�ŵ�����1515
y_FH2_3_2_FH6_3 = y1 + y2 + FH2_3_2 + FH6_3 + saopin + ytu;         %�ŵ�����1516
y_FH2_3_2_FH7_3 = y1 + y2 + FH2_3_2 + FH7_3 + saopin + ytu;         %�ŵ�����1517
y_FH2_3_2_FH8_3 = y1 + y2 + FH2_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1518
y_FH2_3_2_FH9_3 = y1 + y2 + FH2_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1519

%% FH3ϵ����FH4...FH9�����
y_FH3_1_FH4_3 = y1 + y2 + FH3_1 + FH4_3 + saopin + ytu;             %�ŵ�����1520
y_FH3_1_FH5_3 = y1 + y2 + FH3_1 + FH5_3 + saopin + ytu;             %�ŵ�����1521
y_FH3_1_FH6_3 = y1 + y2 + FH3_1 + FH6_3 + saopin + ytu;             %�ŵ�����1522
y_FH3_1_FH7_3 = y1 + y2 + FH3_1 + FH7_3 + saopin + ytu;             %�ŵ�����1523
y_FH3_1_FH8_3 = y1 + y2 + FH3_1 + FH8_3 + saopin + ytu;             %�ŵ�����1524
y_FH3_1_FH9_3 = y1 + y2 + FH3_1 + FH9_3 + saopin + ytu;             %�ŵ�����1525

y_FH3_1_1_FH4_3 = y1 + y2 + FH3_1_1 + FH4_3 + saopin + ytu;         %�ŵ�����1526
y_FH3_1_1_FH5_3 = y1 + y2 + FH3_1_1 + FH5_3 + saopin + ytu;         %�ŵ�����1527
y_FH3_1_1_FH6_3 = y1 + y2 + FH3_1_1 + FH6_3 + saopin + ytu;         %�ŵ�����1528
y_FH3_1_1_FH7_3 = y1 + y2 + FH3_1_1 + FH7_3 + saopin + ytu;         %�ŵ�����1529
y_FH3_1_1_FH8_3 = y1 + y2 + FH3_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1530
y_FH3_1_1_FH9_3 = y1 + y2 + FH3_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1531

y_FH3_1_2_FH4_3 = y1 + y2 + FH3_1_2 + FH4_3 + saopin + ytu;         %�ŵ�����1532
y_FH3_1_2_FH5_3 = y1 + y2 + FH3_1_2 + FH5_3 + saopin + ytu;         %�ŵ�����1533
y_FH3_1_2_FH6_3 = y1 + y2 + FH3_1_2 + FH6_3 + saopin + ytu;         %�ŵ�����1534
y_FH3_1_2_FH7_3 = y1 + y2 + FH3_1_2 + FH7_3 + saopin + ytu;         %�ŵ�����1535
y_FH3_1_2_FH8_3 = y1 + y2 + FH3_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1536
y_FH3_1_2_FH9_3 = y1 + y2 + FH3_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1537

y_FH3_2_FH4_3 = y1 + y2 + FH3_2 + FH4_3 + saopin + ytu;             %�ŵ�����1538
y_FH3_2_FH5_3 = y1 + y2 + FH3_2 + FH5_3 + saopin + ytu;             %�ŵ�����1539
y_FH3_2_FH6_3 = y1 + y2 + FH3_2 + FH6_3 + saopin + ytu;             %�ŵ�����1540
y_FH3_2_FH7_3 = y1 + y2 + FH3_2 + FH7_3 + saopin + ytu;             %�ŵ�����1541
y_FH3_2_FH8_3 = y1 + y2 + FH3_2 + FH8_3 + saopin + ytu;             %�ŵ�����1542
y_FH3_2_FH9_3 = y1 + y2 + FH3_2 + FH9_3 + saopin + ytu;             %�ŵ�����1543

y_FH3_2_1_FH4_3 = y1 + y2 + FH3_2_1 + FH4_3 + saopin + ytu;         %�ŵ�����1544
y_FH3_2_1_FH5_3 = y1 + y2 + FH3_2_1 + FH5_3 + saopin + ytu;         %�ŵ�����1545
y_FH3_2_1_FH6_3 = y1 + y2 + FH3_2_1 + FH6_3 + saopin + ytu;         %�ŵ�����1546
y_FH3_2_1_FH7_3 = y1 + y2 + FH3_2_1 + FH7_3 + saopin + ytu;         %�ŵ�����1547
y_FH3_2_1_FH8_3 = y1 + y2 + FH3_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1548
y_FH3_2_1_FH9_3 = y1 + y2 + FH3_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1549

y_FH3_2_2_FH4_3 = y1 + y2 + FH3_2_2 + FH4_3 + saopin + ytu;         %�ŵ�����1550
y_FH3_2_2_FH5_3 = y1 + y2 + FH3_2_2 + FH5_3 + saopin + ytu;         %�ŵ�����1551
y_FH3_2_2_FH6_3 = y1 + y2 + FH3_2_2 + FH6_3 + saopin + ytu;         %�ŵ�����1552
y_FH3_2_2_FH7_3 = y1 + y2 + FH3_2_2 + FH7_3 + saopin + ytu;         %�ŵ�����1553
y_FH3_2_2_FH8_3 = y1 + y2 + FH3_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1554
y_FH3_2_2_FH9_3 = y1 + y2 + FH3_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1555

y_FH3_3_FH4_3 = y1 + y2 + FH3_3 + FH4_3 + saopin + ytu;             %�ŵ�����1556
y_FH3_3_FH5_3 = y1 + y2 + FH3_3 + FH5_3 + saopin + ytu;             %�ŵ�����1557
y_FH3_3_FH6_3 = y1 + y2 + FH3_3 + FH6_3 + saopin + ytu;             %�ŵ�����1558
y_FH3_3_FH7_3 = y1 + y2 + FH3_3 + FH7_3 + saopin + ytu;             %�ŵ�����1559
y_FH3_3_FH8_3 = y1 + y2 + FH3_3 + FH8_3 + saopin + ytu;             %�ŵ�����1560
y_FH3_3_FH9_3 = y1 + y2 + FH3_3 + FH9_3 + saopin + ytu;             %�ŵ�����1561

y_FH3_3_1_FH4_3 = y1 + y2 + FH3_3_1 + FH4_3 + saopin + ytu;         %�ŵ�����1562
y_FH3_3_1_FH5_3 = y1 + y2 + FH3_3_1 + FH5_3 + saopin + ytu;         %�ŵ�����1563
y_FH3_3_1_FH6_3 = y1 + y2 + FH3_3_1 + FH6_3 + saopin + ytu;         %�ŵ�����1564
y_FH3_3_1_FH7_3 = y1 + y2 + FH3_3_1 + FH7_3 + saopin + ytu;         %�ŵ�����1565
y_FH3_3_1_FH8_3 = y1 + y2 + FH3_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1566
y_FH3_3_1_FH9_3 = y1 + y2 + FH3_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1567

y_FH3_3_2_FH4_3 = y1 + y2 + FH3_3_2 + FH4_3 + saopin + ytu;         %�ŵ�����1568
y_FH3_3_2_FH5_3 = y1 + y2 + FH3_3_2 + FH5_3 + saopin + ytu;         %�ŵ�����1569
y_FH3_3_2_FH6_3 = y1 + y2 + FH3_3_2 + FH6_3 + saopin + ytu;         %�ŵ�����1570
y_FH3_3_2_FH7_3 = y1 + y2 + FH3_3_2 + FH7_3 + saopin + ytu;         %�ŵ�����1571
y_FH3_3_2_FH8_3 = y1 + y2 + FH3_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1572
y_FH3_3_2_FH9_3 = y1 + y2 + FH3_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1573

%% FH4ϵ����FH5...FH9�����
y_FH4_1_FH5_3 = y1 + y2 + FH4_1 + FH5_3 + saopin + ytu;             %�ŵ�����1574
y_FH4_1_FH6_3 = y1 + y2 + FH4_1 + FH6_3 + saopin + ytu;             %�ŵ�����1575
y_FH4_1_FH7_3 = y1 + y2 + FH4_1 + FH7_3 + saopin + ytu;             %�ŵ�����1576
y_FH4_1_FH8_3 = y1 + y2 + FH4_1 + FH8_3 + saopin + ytu;             %�ŵ�����1577
y_FH4_1_FH9_3 = y1 + y2 + FH4_1 + FH9_3 + saopin + ytu;             %�ŵ�����1578

y_FH4_1_1_FH5_3 = y1 + y2 + FH4_1_1 + FH5_3 + saopin + ytu;         %�ŵ�����1579
y_FH4_1_1_FH6_3 = y1 + y2 + FH4_1_1 + FH6_3 + saopin + ytu;         %�ŵ�����1580
y_FH4_1_1_FH7_3 = y1 + y2 + FH4_1_1 + FH7_3 + saopin + ytu;         %�ŵ�����1581
y_FH4_1_1_FH8_3 = y1 + y2 + FH4_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1582
y_FH4_1_1_FH9_3 = y1 + y2 + FH4_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1583

y_FH4_1_2_FH5_3 = y1 + y2 + FH4_1_2 + FH5_3 + saopin + ytu;         %�ŵ�����1584
y_FH4_1_2_FH6_3 = y1 + y2 + FH4_1_2 + FH6_3 + saopin + ytu;         %�ŵ�����1585
y_FH4_1_2_FH7_3 = y1 + y2 + FH4_1_2 + FH7_3 + saopin + ytu;         %�ŵ�����1586
y_FH4_1_2_FH8_3 = y1 + y2 + FH4_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1587
y_FH4_1_2_FH9_3 = y1 + y2 + FH4_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1588

y_FH4_2_FH5_3 = y1 + y2 + FH4_2 + FH5_3 + saopin + ytu;             %�ŵ�����1589
y_FH4_2_FH6_3 = y1 + y2 + FH4_2 + FH6_3 + saopin + ytu;             %�ŵ�����1590
y_FH4_2_FH7_3 = y1 + y2 + FH4_2 + FH7_3 + saopin + ytu;             %�ŵ�����1591
y_FH4_2_FH8_3 = y1 + y2 + FH4_2 + FH8_3 + saopin + ytu;             %�ŵ�����1592
y_FH4_2_FH9_3 = y1 + y2 + FH4_2 + FH9_3 + saopin + ytu;             %�ŵ�����1593

y_FH4_2_1_FH5_3 = y1 + y2 + FH4_2_1 + FH5_3 + saopin + ytu;         %�ŵ�����1594
y_FH4_2_1_FH6_3 = y1 + y2 + FH4_2_1 + FH6_3 + saopin + ytu;         %�ŵ�����1595
y_FH4_2_1_FH7_3 = y1 + y2 + FH4_2_1 + FH7_3 + saopin + ytu;         %�ŵ�����1596
y_FH4_2_1_FH8_3 = y1 + y2 + FH4_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1596
y_FH4_2_1_FH9_3 = y1 + y2 + FH4_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1597

y_FH4_2_2_FH5_3 = y1 + y2 + FH4_2_2 + FH5_3 + saopin + ytu;         %�ŵ�����1598
y_FH4_2_2_FH6_3 = y1 + y2 + FH4_2_2 + FH6_3 + saopin + ytu;         %�ŵ�����1599
y_FH4_2_2_FH7_3 = y1 + y2 + FH4_2_2 + FH7_3 + saopin + ytu;         %�ŵ�����1600
y_FH4_2_2_FH8_3 = y1 + y2 + FH4_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1601
y_FH4_2_2_FH9_3 = y1 + y2 + FH4_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1602

y_FH4_3_FH5_3 = y1 + y2 + FH4_3 + FH5_3 + saopin + ytu;             %�ŵ�����1603
y_FH4_3_FH6_3 = y1 + y2 + FH4_3 + FH6_3 + saopin + ytu;             %�ŵ�����1604
y_FH4_3_FH7_3 = y1 + y2 + FH4_3 + FH7_3 + saopin + ytu;             %�ŵ�����1605
y_FH4_3_FH8_3 = y1 + y2 + FH4_3 + FH8_3 + saopin + ytu;             %�ŵ�����1606
y_FH4_3_FH9_3 = y1 + y2 + FH4_3 + FH9_3 + saopin + ytu;             %�ŵ�����1607

y_FH4_3_1_FH5_3 = y1 + y2 + FH4_3_1 + FH5_3 + saopin + ytu;         %�ŵ�����1608
y_FH4_3_1_FH6_3 = y1 + y2 + FH4_3_1 + FH6_3 + saopin + ytu;         %�ŵ�����1609
y_FH4_3_1_FH7_3 = y1 + y2 + FH4_3_1 + FH7_3 + saopin + ytu;         %�ŵ�����1610
y_FH4_3_1_FH8_3 = y1 + y2 + FH4_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1611
y_FH4_3_1_FH9_3 = y1 + y2 + FH4_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1612

y_FH4_3_2_FH5_3 = y1 + y2 + FH4_3_2 + FH5_3 + saopin + ytu;         %�ŵ�����1613
y_FH4_3_2_FH6_3 = y1 + y2 + FH4_3_2 + FH6_3 + saopin + ytu;         %�ŵ�����1614
y_FH4_3_2_FH7_3 = y1 + y2 + FH4_3_2 + FH7_3 + saopin + ytu;         %�ŵ�����1615
y_FH4_3_2_FH8_3 = y1 + y2 + FH4_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1616
y_FH4_3_2_FH9_3 = y1 + y2 + FH4_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1617

%% FH5ϵ����FH6...FH9�����
y_FH5_1_FH6_3 = y1 + y2 + FH5_1 + FH6_3 + saopin + ytu;             %�ŵ�����1618
y_FH5_1_FH7_3 = y1 + y2 + FH5_1 + FH7_3 + saopin + ytu;             %�ŵ�����1619
y_FH5_1_FH8_3 = y1 + y2 + FH5_1 + FH8_3 + saopin + ytu;             %�ŵ�����1620
y_FH5_1_FH9_3 = y1 + y2 + FH5_1 + FH9_3 + saopin + ytu;             %�ŵ�����1621

y_FH5_1_1_FH6_3 = y1 + y2 + FH5_1_1 + FH6_3 + saopin + ytu;         %�ŵ�����1622
y_FH5_1_1_FH7_3 = y1 + y2 + FH5_1_1 + FH7_3 + saopin + ytu;         %�ŵ�����1623
y_FH5_1_1_FH8_3 = y1 + y2 + FH5_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1624
y_FH5_1_1_FH9_3 = y1 + y2 + FH5_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1625

y_FH5_1_2_FH6_3 = y1 + y2 + FH5_1_2 + FH6_3 + saopin + ytu;         %�ŵ�����1626
y_FH5_1_2_FH7_3 = y1 + y2 + FH5_1_2 + FH7_3 + saopin + ytu;         %�ŵ�����1627
y_FH5_1_2_FH8_3 = y1 + y2 + FH5_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1628
y_FH5_1_2_FH9_3 = y1 + y2 + FH5_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1629

y_FH5_2_FH6_3 = y1 + y2 + FH5_2 + FH6_3 + saopin + ytu;             %�ŵ�����1630
y_FH5_2_FH7_3 = y1 + y2 + FH5_2 + FH7_3 + saopin + ytu;             %�ŵ�����1631
y_FH5_2_FH8_3 = y1 + y2 + FH5_2 + FH8_3 + saopin + ytu;             %�ŵ�����1632
y_FH5_2_FH9_3 = y1 + y2 + FH5_2 + FH9_3 + saopin + ytu;             %�ŵ�����1633

y_FH5_2_1_FH6_3 = y1 + y2 + FH5_2_1 + FH6_3 + saopin + ytu;         %�ŵ�����1634
y_FH5_2_1_FH7_3 = y1 + y2 + FH5_2_1 + FH7_3 + saopin + ytu;         %�ŵ�����1635
y_FH5_2_1_FH8_3 = y1 + y2 + FH5_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1636
y_FH5_2_1_FH9_3 = y1 + y2 + FH5_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1637

y_FH5_2_2_FH6_3 = y1 + y2 + FH5_2_2 + FH6_3 + saopin + ytu;         %�ŵ�����1638
y_FH5_2_2_FH7_3 = y1 + y2 + FH5_2_2 + FH7_3 + saopin + ytu;         %�ŵ�����1639
y_FH5_2_2_FH8_3 = y1 + y2 + FH5_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1640
y_FH5_2_2_FH9_3 = y1 + y2 + FH5_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1641

y_FH5_3_FH6_3 = y1 + y2 + FH5_3 + FH6_3 + saopin + ytu;             %�ŵ�����1642
y_FH5_3_FH7_3 = y1 + y2 + FH5_3 + FH7_3 + saopin + ytu;             %�ŵ�����1643
y_FH5_3_FH8_3 = y1 + y2 + FH5_3 + FH8_3 + saopin + ytu;             %�ŵ�����1644
y_FH5_3_FH9_3 = y1 + y2 + FH5_3 + FH9_3 + saopin + ytu;             %�ŵ�����1645

y_FH5_3_1_FH6_3 = y1 + y2 + FH5_3_1 + FH6_3 + saopin + ytu;         %�ŵ�����1646
y_FH5_3_1_FH7_3 = y1 + y2 + FH5_3_1 + FH7_3 + saopin + ytu;         %�ŵ�����1647
y_FH5_3_1_FH8_3 = y1 + y2 + FH5_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1648
y_FH5_3_1_FH9_3 = y1 + y2 + FH5_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1649

y_FH5_3_2_FH6_3 = y1 + y2 + FH5_3_2 + FH6_3 + saopin + ytu;         %�ŵ�����1650
y_FH5_3_2_FH7_3 = y1 + y2 + FH5_3_2 + FH7_3 + saopin + ytu;         %�ŵ�����1651
y_FH5_3_2_FH8_3 = y1 + y2 + FH5_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1652
y_FH5_3_2_FH9_3 = y1 + y2 + FH5_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1653

%% FH6ϵ����FH7...FH9�����
y_FH6_1_FH7_3 = y1 + y2 + FH6_1 + FH7_3 + saopin + ytu;             %�ŵ�����1654
y_FH6_1_FH8_3 = y1 + y2 + FH6_1 + FH8_3 + saopin + ytu;             %�ŵ�����1655
y_FH6_1_FH9_3 = y1 + y2 + FH6_1 + FH9_3 + saopin + ytu;             %�ŵ�����1656

y_FH6_1_1_FH7_3 = y1 + y2 + FH6_1_1 + FH7_3 + saopin + ytu;         %�ŵ�����1657
y_FH6_1_1_FH8_3 = y1 + y2 + FH6_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1658
y_FH6_1_1_FH9_3 = y1 + y2 + FH6_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1659

y_FH6_1_2_FH7_3 = y1 + y2 + FH6_1_2 + FH7_3 + saopin + ytu;         %�ŵ�����1660
y_FH6_1_2_FH8_3 = y1 + y2 + FH6_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1661
y_FH6_1_2_FH9_3 = y1 + y2 + FH6_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1662

y_FH6_2_FH7_3 = y1 + y2 + FH6_2 + FH7_3 + saopin + ytu;             %�ŵ�����1663
y_FH6_2_FH8_3 = y1 + y2 + FH6_2 + FH8_3 + saopin + ytu;             %�ŵ�����1664
y_FH6_2_FH9_3 = y1 + y2 + FH6_2 + FH9_3 + saopin + ytu;             %�ŵ�����1665

y_FH6_2_1_FH7_3 = y1 + y2 + FH6_2_1 + FH7_3 + saopin + ytu;         %�ŵ�����1666
y_FH6_2_1_FH8_3 = y1 + y2 + FH6_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1667
y_FH6_2_1_FH9_3 = y1 + y2 + FH6_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1668

y_FH6_2_2_FH7_3 = y1 + y2 + FH6_2_2 + FH7_3 + saopin + ytu;         %�ŵ�����1669
y_FH6_2_2_FH8_3 = y1 + y2 + FH6_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1670
y_FH6_2_2_FH9_3 = y1 + y2 + FH6_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1671

y_FH6_3_FH7_3 = y1 + y2 + FH6_3 + FH7_3 + saopin + ytu;             %�ŵ�����1672
y_FH6_3_FH8_3 = y1 + y2 + FH6_3 + FH8_3 + saopin + ytu;             %�ŵ�����1673
y_FH6_3_FH9_3 = y1 + y2 + FH6_3 + FH9_3 + saopin + ytu;             %�ŵ�����1674

y_FH6_3_1_FH7_3 = y1 + y2 + FH6_3_1 + FH7_3 + saopin + ytu;         %�ŵ�����1675
y_FH6_3_1_FH8_3 = y1 + y2 + FH6_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1676
y_FH6_3_1_FH9_3 = y1 + y2 + FH6_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1677

y_FH6_3_2_FH7_3 = y1 + y2 + FH6_3_2 + FH7_3 + saopin + ytu;         %�ŵ�����1678
y_FH6_3_2_FH8_3 = y1 + y2 + FH6_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1679
y_FH6_3_2_FH9_3 = y1 + y2 + FH6_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1680

%% FH7ϵ����FH8...FH9�����
y_FH7_1_FH8_3 = y1 + y2 + FH7_1 + FH8_3 + saopin + ytu;             %�ŵ�����1681
y_FH7_1_FH9_3 = y1 + y2 + FH7_1 + FH9_3 + saopin + ytu;             %�ŵ�����1682

y_FH7_1_1_FH8_3 = y1 + y2 + FH7_1_1 + FH8_3 + saopin + ytu;         %�ŵ�����1683
y_FH7_1_1_FH9_3 = y1 + y2 + FH7_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1684

y_FH7_1_2_FH8_3 = y1 + y2 + FH7_1_2 + FH8_3 + saopin + ytu;         %�ŵ�����1685
y_FH7_1_2_FH9_3 = y1 + y2 + FH7_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1686

y_FH7_2_FH8_3 = y1 + y2 + FH7_2 + FH8_3 + saopin + ytu;             %�ŵ�����1687
y_FH7_2_FH9_3 = y1 + y2 + FH7_2 + FH9_3 + saopin + ytu;             %�ŵ�����1688

y_FH7_2_1_FH8_3 = y1 + y2 + FH7_2_1 + FH8_3 + saopin + ytu;         %�ŵ�����1689
y_FH7_2_1_FH9_3 = y1 + y2 + FH7_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1690

y_FH7_2_2_FH8_3 = y1 + y2 + FH7_2_2 + FH8_3 + saopin + ytu;         %�ŵ�����1691
y_FH7_2_2_FH9_3 = y1 + y2 + FH7_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1692

y_FH7_3_FH8_3 = y1 + y2 + FH7_3 + FH8_3 + saopin + ytu;             %�ŵ�����1693
y_FH7_3_FH9_3 = y1 + y2 + FH7_3 + FH9_3 + saopin + ytu;             %�ŵ�����1694

y_FH7_3_1_FH8_3 = y1 + y2 + FH7_3_1 + FH8_3 + saopin + ytu;         %�ŵ�����1695
y_FH7_3_1_FH9_3 = y1 + y2 + FH7_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1696

y_FH7_3_2_FH8_3 = y1 + y2 + FH7_3_2 + FH8_3 + saopin + ytu;         %�ŵ�����1697
y_FH7_3_2_FH9_3 = y1 + y2 + FH7_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1698

%% FH8ϵ����FH9�����
y_FH8_1_FH9_3 = y1 + y2 + FH8_1 + FH9_3 + saopin + ytu;             %�ŵ�����1699

y_FH8_1_1_FH9_3 = y1 + y2 + FH8_1_1 + FH9_3 + saopin + ytu;         %�ŵ�����1700

y_FH8_1_2_FH9_3 = y1 + y2 + FH8_1_2 + FH9_3 + saopin + ytu;         %�ŵ�����1701

y_FH8_2_FH9_3 = y1 + y2 + FH8_2 + FH9_3 + saopin + ytu;             %�ŵ�����1702

y_FH8_2_1_FH9_3 = y1 + y2 + FH8_2_1 + FH9_3 + saopin + ytu;         %�ŵ�����1703

y_FH8_2_2_FH9_3 = y1 + y2 + FH8_2_2 + FH9_3 + saopin + ytu;         %�ŵ�����1704

y_FH8_3_FH9_3 = y1 + y2 + FH8_3 + FH9_3 + saopin + ytu;             %�ŵ�����1705

y_FH8_3_1_FH9_3 = y1 + y2 + FH8_3_1 + FH9_3 + saopin + ytu;         %�ŵ�����1706

y_FH8_3_2_FH9_3 = y1 + y2 + FH8_3_2 + FH9_3 + saopin + ytu;         %�ŵ�����1707




% % img_height = 400;
% % img_width = 500;
% % sig1_width = 64;
% % sig1_height = 10;
% % sig2_width = 100;
% % sig2_height = 9;
% % sig3_width = 50;
% % sig3_height = 10;
% % sig4_width = 125;
% % sig4_height = 10;
% % sig5_width = 250;
% % sig5_height = 10;
% % sig6_width = 25;
% % sig6_height = 8;
% % sig7_width = 32;
% % sig7_height = 9;
% % sig8_width = 20;
% % sig8_height = 8;
% % sig9_width = 16;
% % sig9_height = 8;

img_height = 800;
img_width = 1000;
sig1_width = 128;
sig1_height = 20;
sig2_width = 200;
sig2_height = 18;
sig3_width = 100;
sig3_height = 20;
sig4_width = 250;
sig4_height = 20;
sig5_width = 500;
sig5_height = 20;
sig6_width = 50;
sig6_height = 16;
sig7_width = 64;
sig7_height = 18;
sig8_width = 40;
sig8_height = 16;
sig9_width = 32;
sig9_height = 16;


    
         %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 33520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH3_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 33540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_3_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH4_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 33560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_4_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH5_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 33580;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_2,f_set_5_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH6_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 33600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_6_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH7_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 33620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_7_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH8_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 33640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_8_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH9_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 33660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_9_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %
     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 33680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH3_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 33700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_3_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH4_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 33720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_4_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH5_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 33740;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_1,f_set_5_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH6_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 33760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_6_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH7_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 33780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_7_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH8_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 33800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_8_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH9_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 33820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_9_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 33840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH3_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 33860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_3_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH4_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 33880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_4_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH5_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 33900;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_2,f_set_5_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH6_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 33920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_6_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH7_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 33940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_7_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH8_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 33960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_8_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH9_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 33980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_9_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH3_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_3_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH4_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 34040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_4_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_FH5_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 34060;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3,f_set_5_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH6_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 34080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_6_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH7_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 34100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_7_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH8_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 34120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_8_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH9_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 34140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_9_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    
    %
     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH3_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_3_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH4_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 34200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_4_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH5_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 34220;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_1,f_set_5_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH6_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 34240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_6_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH7_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 34260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_7_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH8_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 34280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_8_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH9_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 34300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_9_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %
     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH3_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_3_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH4_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 34360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_4_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH5_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 34380;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_2,f_set_5_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH6_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 34400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_6_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH7_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 34420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_7_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH8_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 34440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_8_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH9_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 34460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_9_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    
     BWimg = FH_Time_Fre_Data(y_FH1_1_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 34520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 34540;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);  
%     DoubleSignalXml(label_path,f_set_1_1,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 34560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 34580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 34600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 34620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 34680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 34700;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_1,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 34720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 34740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 34760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 34780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 34840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 34860;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_2,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 34880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 34900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 34920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 34940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %
     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 34960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 34980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 35000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 35020;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_1,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 35040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 35060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 35080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 35100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 35120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 35140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 35160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 35180;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_2,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 35200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 35220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 35240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 35260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 35280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 35300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 35320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 35340;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 35360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 35380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 35400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 35420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    
    %
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 35440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 35460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 35480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 35500;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_1,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 35520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 35540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 35560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 35580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %
     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH2_1_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 35600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_2_1_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH3_1_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 35620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_3_1_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH4_1_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 35640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_4_1_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH5_1_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 35660;
%     str = strcat('sig',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_2,f_set_5_1_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH6_1_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 35680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_6_1_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH7_1_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 35700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_7_1_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH8_1_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 35720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_8_1_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH9_1_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 35740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_9_1_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 10480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 10500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 10520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 10540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 10560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 10580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 10600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 10620;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_1,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 10640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 10660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 10680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 10700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 10720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 10740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_2,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 10760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 10780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 10800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 10820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 10840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 10860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 10880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 10900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 10920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 10940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 10960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 10980;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_1,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 11080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_2,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 11200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11220;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 11320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11340;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_1,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH4_1_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 11440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_4_1_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH5_1_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_2,f_set_5_1_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH6_1_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_6_1_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH7_1_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_7_1_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH8_1_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_8_1_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH9_1_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_9_1_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11660;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_1,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_2,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 11900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 11920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 11940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 11960;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_1,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 11980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 12000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 12020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 12040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 12060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_2,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 12080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 12100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 12120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 12140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 12160;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 12180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 12200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 12220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 12240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 12260;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_1,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 12280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 12300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 12320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 12340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH5_1_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 12360;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_2,f_set_5_1_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH6_1_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 12380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_6_1_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH7_1_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 12400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_7_1_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH8_1_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 12420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_8_1_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH9_1_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 12440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_9_1_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 12520;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12540;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12580;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 12600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%       %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12620;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12640;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12660;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 12680;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12720;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 12760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12780;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12820;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 12840;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12880;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 12920;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 12940;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 12960;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 12980;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 13000;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 13020;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 13040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 13060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 13080;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH6_1_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 13100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_6_1_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH7_1_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 13120;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_7_1_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH8_1_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 13140;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_8_1_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH9_1_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 13160;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_9_1_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH7_1_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 13660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_7_1_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH8_1_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_8_1_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH9_1_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_9_1_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 13960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 13980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 14000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH8_1_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 14040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_8_1_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH9_1_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_9_1_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_1_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_1,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_1_1_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_1_1,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_1_2_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_1_2,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_2_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_2,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_2_1_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_2_1,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_2_2_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_2_2,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_3_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_3,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_3_1_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_3_1,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_3_2_FH9_1_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_3_2,f_set_9_1_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
    
    
     %% ���������
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 14260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 14280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 14300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 14320;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);  
%     DoubleSignalXml(label_path,f_set_1_1,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 14340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 14360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 14380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 14420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 14440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 14460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 14480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_1,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 14500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 14520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 14540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 14580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 14600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 14620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 14640;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_2,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 14660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 14680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 14700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 14740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 14760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 14780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
%     
%     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 14800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_1,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 14820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 14840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 14860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 14880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 14900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 14920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 14940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 14960;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_2,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 14980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 15060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 15120;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 15140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    
    %%
     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 15220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 15280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_1,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 15300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %%
     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH2_2,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 15380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_2_2,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH3_2,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_3_2,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH4_2,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_4_2,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH5_2,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 15440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_2,f_set_5_2,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH6_2,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 15460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_6_2,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH7_2,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_7_2,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH8_2,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_8_2,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH9_2,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_9_2,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 15580;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 15600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 15720;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1_1,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 15740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 15860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1_2,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 15880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 15900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 15920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 15940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 15960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 15980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16000;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 16100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16140;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2_1,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 16240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2_2,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 16380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 16520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
%     
%     BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3_1,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH3_2,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 16660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_3_2,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH4_2,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_4_2,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH5_2,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3_2,f_set_5_2,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH6_2,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_6_2,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH7_2,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_7_2,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH8_2,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_8_2,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH9_2,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_9_2,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16820;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 16880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 16900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 16920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 16940;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_1,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 16960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 16980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_2,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17300;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_1,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_2,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17540;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17660;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_1,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH4_2,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 17760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_4_2,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH5_2,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17780;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_2,f_set_5_2,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH6_2,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_6_2,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH7_2,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_7_2,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH8_2,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_8_2,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH9_2,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_9_2,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17880;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 17900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 17920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 17940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 17960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 17980;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_1,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18080;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_2,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_1,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18380;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_2,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18580;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_1,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH5_2,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 18680;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_2,f_set_5_2,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH6_2,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 18700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_6_2,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH7_2,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 18720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_7_2,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH8_2,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 18740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_8_2,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH9_2,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 18760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_9_2,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 18780;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 18800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 18820;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 18840;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 18860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 18880;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 18900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 18920;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%       %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 18940;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 18960;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 18980;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19000;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 19020;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 19040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 19060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19080;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 19100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 19120;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 19140;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19160;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 19180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 19200;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 19220;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19240;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 19260;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 19280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 19300;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19320;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 19340;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 19360;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 19380;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19400;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH6_2,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 19420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_6_2,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH7_2,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 19440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_7_2,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH8_2,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 19460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_8_2,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH9_2,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 19480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_9_2,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 19940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 19960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH7_2,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 19980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_7_2,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH8_2,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_8_2,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH9_2,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_9_2,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH8_2,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_8_2,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH9_2,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_9_2,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20400;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_1_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1_1,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_2_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1_2,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_1_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2_1,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_2_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2_2,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20520;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_1_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20540;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3_1,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_2_FH9_2,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 20560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3_2,f_set_9_2,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');

    
    %% ���������
     BWimg = FH_Time_Fre_Data(y_FH1_1_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 20580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 20600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 20620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 20640;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);  
%     DoubleSignalXml(label_path,f_set_1_1,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 20660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 20680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 20740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 20760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 20780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 20800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_1,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 20820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 20840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 20860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 20880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 20900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 20920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 20940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 20960;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_2,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 20980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 21060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 21080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 21100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 21120;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_1,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 21140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 21220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 21240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 21260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 21280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_2,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 21300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 21380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 21400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 21420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 21440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 21460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    
    %%
     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 21540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 21560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 21580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 21600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_1,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 21620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %%
     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH2_2_1,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 21700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_2_2_1,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH3_2_1,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 21720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_3_2_1,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH4_2_1,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 21740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_4_2_1,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH5_2_1,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 21760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_2,f_set_5_2_1,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH6_2_1,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 21780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_6_2_1,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH7_2_1,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_7_2_1,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH8_2_1,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_8_2_1,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH9_2_1,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_9_2_1,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 21860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 21880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 21900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 21920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 21940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 21960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 21980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1_1,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1_2,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22320;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2_1,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2_2,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 22860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 22880;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3_1,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 22900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 22920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 22940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 22960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH3_2_1,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 22980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_3_2_1,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH4_2_1,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_4_2_1,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH5_2_1,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23020;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3_2,f_set_5_2_1,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH6_2_1,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_6_2_1,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH7_2_1,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_7_2_1,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH8_2_1,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_8_2_1,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH9_2_1,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_9_2_1,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23140;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23260;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_1,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23380;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_2,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23620;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_1,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_2,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 23880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 23900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 23920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 23940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 23960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 23980;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_1,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH4_2_1,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 24080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_4_2_1,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH5_2_1,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_2,f_set_5_2_1,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH6_2_1,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_6_2_1,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH7_2_1,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_7_2_1,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH8_2_1,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_8_2_1,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH9_2_1,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_9_2_1,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24200;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24300;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_1,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24400;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_2,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_1,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_2,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 24900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_1,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 24920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 24940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 24960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 24980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH5_2_1,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 25000;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_2,f_set_5_2_1,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH6_2_1,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 25020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_6_2_1,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH7_2_1,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 25040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_7_2_1,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH8_2_1,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 25040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_8_2_1,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH9_2_1,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 25060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_9_2_1,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25080;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25120;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25140;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25160;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25200;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25220;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%       %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25240;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25260;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25300;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25320;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25340;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25360;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25380;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25400;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25520;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25540;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25580;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25620;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25640;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25660;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25680;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH6_2_1,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 25720;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_6_2_1,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH7_2_1,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 25740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_7_2_1,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH8_2_1,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 25760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_8_2_1,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH9_2_1,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 25780;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_9_2_1,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 25800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 25820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 25840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 25860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 25880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 25900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 25920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 25940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 25960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 25980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 26040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 26100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 26160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 26220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH7_2_1,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 26280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_7_2_1,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH8_2_1,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_8_2_1,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH9_2_1,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_9_2_1,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH8_2_1,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 26660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_8_2_1,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH9_2_1,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 26680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_9_2_1,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_1_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26720;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1_1,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_2_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1_2,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_1_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26780;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2_1,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_2_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2_2,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26820;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_1_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26840;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3_1,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_2_FH9_2_1,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 26860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3_2,f_set_9_2_1,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
% 
%     
    %% ���������
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 26880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 26900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 26920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 26940;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);  
%     DoubleSignalXml(label_path,f_set_1_1,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 26960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);  
    DoubleSignalXml(label_path,f_set_1_1,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 26980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 27040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 27060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 27080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
%     
%     BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 27100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_1,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 27120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 27140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_1_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_1,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 27200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 27220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 27240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 27260;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_1_2,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 27280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 27300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_1_2_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_1_2,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 27360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 27380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 27400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 27420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_1,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 27440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 27460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_1_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_1,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 27520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 27540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 27560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 27580;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_2_2,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 27600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 27620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_2_2_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_2_2,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 27680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 27700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 27720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 27740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 27760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 27780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');
    
    
    %%
     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 27840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 27860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 27880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 27900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_1,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 27920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 27940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 27960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_1_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 27980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_1,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %%
     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH2_3,snr,i);                      %������Ƶ1����Ƶ2��ͬ������µ�20��ʱƵͼ
    index = i + 28000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_2_3,img_width,img_height,sig1_width,sig1_height,sig2_width,sig2_height,index,'FH1','FH2');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH3_3,snr,i);                      %������Ƶ1����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_3_3,img_width,img_height,sig1_width,sig1_height,sig3_width,sig3_height,index,'FH1','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH4_3,snr,i);                      %������Ƶ1����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_4_3,img_width,img_height,sig1_width,sig1_height,sig4_width,sig4_height,index,'FH1','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH5_3,snr,i);                      %������Ƶ1����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_1_3_2,f_set_5_3,img_width,img_height,sig1_width,sig1_height,sig5_width,sig5_height,index,'FH1','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH6_3,snr,i);                      %������Ƶ1����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_6_3,img_width,img_height,sig1_width,sig1_height,sig6_width,sig6_height,index,'FH1','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH7_3,snr,i);                      %������Ƶ1����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_7_3,img_width,img_height,sig1_width,sig1_height,sig7_width,sig7_height,index,'FH1','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH8_3,snr,i);                      %������Ƶ1����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_8_3,img_width,img_height,sig1_width,sig1_height,sig8_width,sig8_height,index,'FH1','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH1_3_2_FH9_3,snr,i);                      %������Ƶ1����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_1_3_2,f_set_9_3,img_width,img_height,sig1_width,sig1_height,sig9_width,sig9_height,index,'FH1','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28200;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28340;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1_1,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_1_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_1,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_1_2,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_1_2_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_1_2,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28620;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2_1,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_1_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_1,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 28860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 28880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 28900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_2_2,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 28920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 28940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 28960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_2_2_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 28980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_2_2,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 29000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 29140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3_1,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_1_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_1,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH3_3,snr,i);                      %������Ƶ2����Ƶ3��ͬ������µ�20��ʱƵͼ
    index = i + 29280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_3_3,img_width,img_height,sig2_width,sig2_height,sig3_width,sig3_height,index,'FH2','FH3');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH4_3,snr,i);                      %������Ƶ2����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_4_3,img_width,img_height,sig2_width,sig2_height,sig4_width,sig4_height,index,'FH2','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH5_3,snr,i);                      %������Ƶ2����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29320;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_2_3_2,f_set_5_3,img_width,img_height,sig2_width,sig2_height,sig5_width,sig5_height,index,'FH2','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH6_3,snr,i);                      %������Ƶ2����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_6_3,img_width,img_height,sig2_width,sig2_height,sig6_width,sig6_height,index,'FH2','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH7_3,snr,i);                      %������Ƶ2����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_7_3,img_width,img_height,sig2_width,sig2_height,sig7_width,sig7_height,index,'FH2','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH8_3,snr,i);                      %������Ƶ2����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_8_3,img_width,img_height,sig2_width,sig2_height,sig8_width,sig8_height,index,'FH2','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH2_3_2_FH9_3,snr,i);                      %������Ƶ2����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_2_3_2,f_set_9_3,img_width,img_height,sig2_width,sig2_height,sig9_width,sig9_height,index,'FH2','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_1,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_1_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_1,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29680;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_1_2,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_1_2_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_1_2,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 29880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    
     %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 29900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 29920;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_1,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 29940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 29960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 29980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_1_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_1,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 30020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_2_2,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30100;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_2_2_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_2_2,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 30140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30160;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 30260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30280;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_1,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_1_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_1,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH4_3,snr,i);                      %������Ƶ3����Ƶ4��ͬ������µ�20��ʱƵͼ
    index = i + 30380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_4_3,img_width,img_height,sig3_width,sig3_height,sig4_width,sig4_height,index,'FH3','FH4');
    
%     BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH5_3,snr,i);                      %������Ƶ3����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30400;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_3_3_2,f_set_5_3,img_width,img_height,sig3_width,sig3_height,sig5_width,sig5_height,index,'FH3','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH6_3,snr,i);                      %������Ƶ3����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_6_3,img_width,img_height,sig3_width,sig3_height,sig6_width,sig6_height,index,'FH3','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH7_3,snr,i);                      %������Ƶ3����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_7_3,img_width,img_height,sig3_width,sig3_height,sig7_width,sig7_height,index,'FH3','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH8_3,snr,i);                      %������Ƶ3����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_8_3,img_width,img_height,sig3_width,sig3_height,sig8_width,sig8_height,index,'FH3','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH3_3_2_FH9_3,snr,i);                      %������Ƶ3����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_3_3_2,f_set_9_3,img_width,img_height,sig3_width,sig3_height,sig9_width,sig9_height,index,'FH3','FH9');

    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_1,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_1_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_1,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_1_2,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_1_2_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_1_2,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 30900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_1,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 30920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 30940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 30960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_1_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 30980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_1,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 31000;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_2_2,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 31020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 31040;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 31060;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_2_2_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 31080;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_2_2,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 31100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 31120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 31140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 31160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 31180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 31200;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_1,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 31220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 31240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 31260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_1_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 31280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_1,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH5_3,snr,i);                      %������Ƶ4����Ƶ5��ͬ������µ�20��ʱƵͼ
%     index = i + 31300;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_4_3_2,f_set_5_3,img_width,img_height,sig4_width,sig4_height,sig5_width,sig5_height,index,'FH4','FH5');
%     
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH6_3,snr,i);                      %������Ƶ4����Ƶ6��ͬ������µ�20��ʱƵͼ
    index = i + 31320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_6_3,img_width,img_height,sig4_width,sig4_height,sig6_width,sig6_height,index,'FH4','FH6');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH7_3,snr,i);                      %������Ƶ4����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 31340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_7_3,img_width,img_height,sig4_width,sig4_height,sig7_width,sig7_height,index,'FH4','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH8_3,snr,i);                      %������Ƶ4����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 31360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_8_3,img_width,img_height,sig4_width,sig4_height,sig8_width,sig8_height,index,'FH4','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH4_3_2_FH9_3,snr,i);                      %������Ƶ4����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 31380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_4_3_2,f_set_9_3,img_width,img_height,sig4_width,sig4_height,sig9_width,sig9_height,index,'FH4','FH9');
    
    %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31400;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31420;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31440;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31460;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31480;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31500;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31520;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_1_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31540;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_1,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%       %%
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31560;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31580;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31600;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_1_2_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31620;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_1_2,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31640;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31660;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31680;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31700;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31720;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31740;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31760;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_1_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31780;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_1,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31800;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31820;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31840;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_2_2_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31860;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_2_2,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31880;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31900;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 31920;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 31940;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 31960;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 31980;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 32000;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_1_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 32020;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_1,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH6_3,snr,i);                      %������Ƶ5����Ƶ6��ͬ������µ�20��ʱƵͼ
%     index = i + 32040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_6_3,img_width,img_height,sig5_width,sig5_height,sig6_width,sig6_height,index,'FH5','FH6');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH7_3,snr,i);                      %������Ƶ5����Ƶ7��ͬ������µ�20��ʱƵͼ
%     index = i + 32060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_7_3,img_width,img_height,sig5_width,sig5_height,sig7_width,sig7_height,index,'FH5','FH7');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH8_3,snr,i);                      %������Ƶ5����Ƶ8��ͬ������µ�20��ʱƵͼ
%     index = i + 32080;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_8_3,img_width,img_height,sig5_width,sig5_height,sig8_width,sig8_height,index,'FH5','FH8');
%     
%     BWimg = FH_Time_Fre_Data(y_FH5_3_2_FH9_3,snr,i);                      %������Ƶ5����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 32100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_5_3_2,f_set_9_3,img_width,img_height,sig5_width,sig5_height,sig9_width,sig9_height,index,'FH5','FH9');
%     
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32120;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32140;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32160;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32180;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32200;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_1_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32220;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_1,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32240;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32260;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_1_2_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32280;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_1_2,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32300;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32320;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32340;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32360;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32380;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_1_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32400;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_1,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32420;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32440;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_2_2_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32460;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_2_2,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32480;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32500;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32520;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32540;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32560;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_1_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32580;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_1,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH7_3,snr,i);                      %������Ƶ6����Ƶ7��ͬ������µ�20��ʱƵͼ
    index = i + 32600;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_7_3,img_width,img_height,sig6_width,sig6_height,sig7_width,sig7_height,index,'FH6','FH7');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH8_3,snr,i);                      %������Ƶ6����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32620;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_8_3,img_width,img_height,sig6_width,sig6_height,sig8_width,sig8_height,index,'FH6','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH6_3_2_FH9_3,snr,i);                      %������Ƶ6����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32640;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_6_3_2,f_set_9_3,img_width,img_height,sig6_width,sig6_height,sig9_width,sig9_height,index,'FH6','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32660;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32680;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32700;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_1_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32720;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_1,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32740;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_1_2_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32760;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_1_2,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32780;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32800;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32820;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_1_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32840;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_1,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32860;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_2_2_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32880;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_2_2,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32900;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32920;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32940;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_1_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 32960;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_1,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH8_3,snr,i);                      %������Ƶ7����Ƶ8��ͬ������µ�20��ʱƵͼ
    index = i + 32980;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_8_3,img_width,img_height,sig7_width,sig7_height,sig8_width,sig8_height,index,'FH7','FH8');
    
    BWimg = FH_Time_Fre_Data(y_FH7_3_2_FH9_3,snr,i);                      %������Ƶ7����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 33000;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_7_3_2,f_set_9_3,img_width,img_height,sig7_width,sig7_height,sig9_width,sig9_height,index,'FH7','FH9');
    
    %%
    BWimg = FH_Time_Fre_Data(y_FH8_1_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
    index = i + 33020;
    str = strcat('sig',num2str(index));                                        
    path = [img_path, str, '.jpg'];
    imwrite(BWimg,path);
    DoubleSignalXml(label_path,f_set_8_1,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
    
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_1_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33040;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1_1,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_1_2_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33060;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_1_2,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33080;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_1_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33100;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2_1,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_2_2_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33120;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_2_2,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33140;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_1_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33160;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3_1,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
%     
%     %%
%     BWimg = FH_Time_Fre_Data(y_FH8_3_2_FH9_3,snr,i);                      %������Ƶ8����Ƶ9��ͬ������µ�20��ʱƵͼ
%     index = i + 33180;
%     str = strcat('signal_val_FH',num2str(index));                                        
%     path = [img_path, str, '.jpg'];
%     imwrite(BWimg,path);
%     DoubleSignalXml(label_path,f_set_8_3_2,f_set_9_3,img_width,img_height,sig8_width,sig8_height,sig9_width,sig9_height,index,'FH8','FH9');
% 
%     
    
    
    
end











































