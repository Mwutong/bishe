function output = FH_Time_Fre_Data(y,snr,i)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
% 信噪比范围-5~5db
        x = awgn(y,snr(i),'measured');                 %加噪——低信噪比情况下
        x = x';
        x = hilbert(x);     %将实信号通过希尔伯特变换变成解析信号
        %% 信道环境——时频图
        Nfft = 2048; 
        [stft,T1,F1]=tfrstft(x,1:length(x),Nfft);    % 短时傅里叶变换
        %以时间为横轴，频率为纵轴 
        F1 = F1(1:Nfft/2);
    %     figure(1);
        imagesc(T1,2 * F1,abs(stft));  
        colormap(gray);
        ylabel('频率/Hz','FontSize',14);
        xlabel('采样点','FontSize',14);
        %xlabel('归一化频率','FontSize',14);
        %ylabel('归一化时间','FontSize',14);
        %title('信道环境时频分析图-STFT','FontSize',14);
    %     axis tight;
        axis([0 40000 0 0.5 ]);
        axis off;
        set(gca,'color','w');                                           %gcf返回当前Figure对象的句柄值。gca 返回当前axes 对象的句柄值
    %     set(gca,'XTicklabel',{'0','0.05','0.1','0.15','0.2','0.25','0.3','0.35','0.4'});
    %     set(gca,'YTicklabel',{'0','0.05','0.1','0.15','0.2','0.25','0.3','0.35','0.4','0.45','0.5'});
        

        % [S,F,T,P] = spectrogram(x,Nfft,2000,Nfft,10e6,'yaxis');
        % imagesc(2 * F,T,abs(S'));      %绘制三维阴影曲面图
        % colormap(gray);
        % axis([ 0 max(F) 0 0.004]);
        % axis off;
        % set(gca,'color','w');                                           %gcf返回当前Figure对象的句柄值。gca 返回当前axes 对象的句柄值


        % 保存图片
        f=getframe(gca); %获取当前图窗为图像帧
        img=f.cdata;%将图像帧的像素数值保存到img变量中，即可通过操作img数组对图像做进一步处理
        grayimg = rgb2gray(img);                %将真彩色图像RGB转换为灰度强度图像I
        output = imresize(grayimg,[800 1000]);
    
    %     figure(2);
    %     imshow(BWimg);


end

