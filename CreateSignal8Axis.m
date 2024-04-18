function [xmin,ymin,xmax,ymax] = CreateSignal8Axis(f_set,img_height,sig_height)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    y_center = zeros(1,length(f_set));
%     xmin = [1,19,39,59,81,99,119,140,160,179,199,219,240,259,280,299,319,339,359,379,400,420,439,459,479];
    xmin = [1,38,78,118,162,198,238,280,320,358,398,438,480,518,560,598,638,678,718,758,800,840,878,918,958];
    ymin = zeros(1,length(f_set));
%     xmax = [20,39,59,79,101,119,139,160,180,199,219,239,260,279,300,319,339,359,379,399,420,440,459,479,499];
    xmax = [40,78,118,158,202,238,278,320,360,398,438,478,520,558,600,638,678,718,758,798,840,880,918,958,998];
    ymax = zeros(1,length(f_set));
    for j = 1:length(f_set)
        y_center(j) = ((f_set(j) / 5 ) / 10^6) * img_height;
        ymin(j) = floor(y_center(j) - sig_height / 2);
        ymax(j) = floor(y_center(j) + sig_height / 2);
    end
end
