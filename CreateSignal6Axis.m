function [xmin,ymin,xmax,ymax] = CreateSignal6Axis(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%     xmin = [1,25,51,74,99,125,150,175,200,225,250,275,300,324,350,375,400,424,450,474];
    xmin = [1,50,102,148,198,250,300,350,400,450,500,550,600,648,700,750,800,848,900,948];
    ymin = zeros(1,length(f_set));
%     xmax = [26,51,77,100,125,151,176,201,226,251,276,301,326,350,376,401,426,450,476,500];
    xmax = [52,102,154,200,250,302,352,402,452,502,552,602,652,700,752,802,852,900,952,1000];
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end
