function [xmin,ymin,xmax,ymax] = CreateSignal7Axis(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%     xmin = [1,31,62,93,125,156,187,219,249,281,312,343,375,405,437,468];
    xmin = [1,62,124,186,250,312,374,438,498,562,624,686,750,810,874,936];
    ymin = zeros(1,length(f_set));
%     xmax = [32,63,94,125,157,188,219,251,281,313,344,375,407,437,469,500];
    xmax = [64,126,188,250,314,376,438,502,562,626,688,750,814,874,938,1000];
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end
