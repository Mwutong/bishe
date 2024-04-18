function output = FH_Time_Fre_Data(y,snr,i)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% ����ȷ�Χ-5~5db
        x = awgn(y,snr(i),'measured');                 %���롪��������������
        x = x';
        x = hilbert(x);     %��ʵ�ź�ͨ��ϣ�����ر任��ɽ����ź�
        %% �ŵ���������ʱƵͼ
        Nfft = 2048; 
        [stft,T1,F1]=tfrstft(x,1:length(x),Nfft);    % ��ʱ����Ҷ�任
        %��ʱ��Ϊ���ᣬƵ��Ϊ���� 
        F1 = F1(1:Nfft/2);
    %     figure(1);
        imagesc(T1,2 * F1,abs(stft));  
        colormap(gray);
        ylabel('Ƶ��/Hz','FontSize',14);
        xlabel('������','FontSize',14);
        %xlabel('��һ��Ƶ��','FontSize',14);
        %ylabel('��һ��ʱ��','FontSize',14);
        %title('�ŵ�����ʱƵ����ͼ-STFT','FontSize',14);
    %     axis tight;
        axis([0 40000 0 0.5 ]);
        axis off;
        set(gca,'color','w');                                           %gcf���ص�ǰFigure����ľ��ֵ��gca ���ص�ǰaxes ����ľ��ֵ
    %     set(gca,'XTicklabel',{'0','0.05','0.1','0.15','0.2','0.25','0.3','0.35','0.4'});
    %     set(gca,'YTicklabel',{'0','0.05','0.1','0.15','0.2','0.25','0.3','0.35','0.4','0.45','0.5'});
        

        % [S,F,T,P] = spectrogram(x,Nfft,2000,Nfft,10e6,'yaxis');
        % imagesc(2 * F,T,abs(S'));      %������ά��Ӱ����ͼ
        % colormap(gray);
        % axis([ 0 max(F) 0 0.004]);
        % axis off;
        % set(gca,'color','w');                                           %gcf���ص�ǰFigure����ľ��ֵ��gca ���ص�ǰaxes ����ľ��ֵ


        % ����ͼƬ
        f=getframe(gca); %��ȡ��ǰͼ��Ϊͼ��֡
        img=f.cdata;%��ͼ��֡��������ֵ���浽img�����У�����ͨ������img�����ͼ������һ������
        grayimg = rgb2gray(img);                %�����ɫͼ��RGBת��Ϊ�Ҷ�ǿ��ͼ��I
        output = imresize(grayimg,[800 1000]);
    
    %     figure(2);
    %     imshow(BWimg);


end

