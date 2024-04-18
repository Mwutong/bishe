function [xmin,ymin,xmax,ymax] = CreateSignal5Axis(f_set,img_height,sig_height)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    y_center = zeros(1,length(f_set));
    xmin = [1,250];
%     xmin = [1,500];
    ymin = zeros(1,length(f_set));
    xmax = [250,500];
%     xmax = [500,1000];
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end
