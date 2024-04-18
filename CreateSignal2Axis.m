function [xmin,ymin,xmax,ymax] = CreateSignal2Axis(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%     xmin = [1,98,198,298,397];
    xmin = [1,196,396,596,794];
    ymin = zeros(1,length(f_set));
%     xmax = [103,201,301,401,500];
    xmax = [206,402,602,802,1000];
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end

