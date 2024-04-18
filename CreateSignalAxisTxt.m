function [xmin,ymin,xmax,ymax] = CreateSignalAxisTxt(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
  %UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%      xmin = [1,63,125,187,249,311,373,435];
    xmin = [0.5,63,125,187,249,311,373,435]*2;
   %xmin = [1,126,250,374,498,622,746,870];
    ymin = zeros(1,length(f_set));
%      xmax = [65,127,189,251,313,375,437,499];
    xmax = [65,127,189,251,313,375,437,499]*2;
   %xmax = [130   254   378   502   626   750   874   998]
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end

