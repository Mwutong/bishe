function [xmin,ymin,xmax,ymax] = CreateSignal3Axis(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%     xmin = [1,49,99,149,198,249,298,349,399,448];
    xmin = [1,98,198,298,396,498,596,698,798,896];
    ymin = zeros(1,length(f_set));
%     xmax = [52,101,151,201,250,301,350,401,451,500];
    xmax = [104,202,302,402,500,602,700,802,902,1000];
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end
