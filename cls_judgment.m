
function cls_judgment(cls,f_set,img_height,sig_width,sig_height,docNode,docRootNode)
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
    cls_name = cls;
    if strcmp(cls_name,'FH1')
        [xmin,ymin,xmax,ymax] = CreateSignalAxisTxt(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name,'FH2')
         [xmin,ymin,xmax,ymax] = CreateSignal2Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name,'FH3')
        [xmin,ymin,xmax,ymax] = CreateSignal3Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name, 'FH4')
        [xmin,ymin,xmax,ymax] = CreateSignal4Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name, 'FH5')
        [xmin,ymin,xmax,ymax] = CreateSignal5Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name, 'FH6')
        [xmin,ymin,xmax,ymax] = CreateSignal6Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name, 'FH7')
        [xmin,ymin,xmax,ymax] = CreateSignal7Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name, 'FH8')
        [xmin,ymin,xmax,ymax] = CreateSignal8Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    elseif strcmp(cls_name, 'FH9')
        [xmin,ymin,xmax,ymax] = CreateSignal9Axis(f_set,img_height,sig_height);
        for i = 1 : length(f_set)
              NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
        end
    end
end

