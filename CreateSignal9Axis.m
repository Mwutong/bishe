function [xmin,ymin,xmax,ymax] = CreateSignal9Axis(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%     xmin = [1,14,31,46,62,77,93,110,124,141,157,172,186,203,218,233,249,265,281,297,312,327,343,359,375,390,406,421,437,453,468,483];
    xmin = [0.5,14,31,46,62,77,93,110,124,141,157,172,186,203,218,233,249,265,281,297,312,327,343,359,375,390,406,421,437,453,468,483] * 2;
    ymin = zeros(1,length(f_set));
%     xmax = [16,31,47,62,78,93,109,126,140,157,173,188,202,219,234,249,265,281,297,313,328,343,359,375,391,406,422,437,453,469,484,500];
    xmax = [16,31,47,62,78,93,109,126,140,157,173,188,202,219,234,249,265,281,297,313,328,343,359,375,391,406,422,437,453,469,484,500] * 2;
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end
