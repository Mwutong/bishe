function  OneSignalXml(img_path,f_set,img_width,img_height,sig_width,sig_height,i,cls)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    % file name
    filename = strcat('sig',num2str(i));
    img_filename = [filename, '.jpg'];
    FH_img_path = [img_path,img_filename];
 
    
    % create document
    docNode = com.mathworks.xml.XMLUtils.createDocument(filename);

    % document element
    docRootNode = docNode.getDocumentElement();

    % name
    folderNode = docNode.createElement('folder');
    folderNode.appendChild(docNode.createTextNode(sprintf('跳频')));
    docRootNode.appendChild(folderNode);

    % gender
    genderNode = docNode.createElement('filename');
    genderNode.appendChild(docNode.createTextNode(img_filename));
    docRootNode.appendChild(genderNode);

    % address
    addressNode = docNode.createElement('path');
    addressNode.appendChild(docNode.createTextNode(FH_img_path));
    docRootNode.appendChild(addressNode);

    % source
    sourceElement = docNode.createElement('source'); 
    docRootNode.appendChild(sourceElement);

    databaseNode = docNode.createElement('database');
    databaseNode.appendChild(docNode.createTextNode('Unknown'));
    sourceElement.appendChild(databaseNode);

    % size
    sizeElement = docNode.createElement('size');
    docRootNode.appendChild(sizeElement);

    widthNode = docNode.createElement('width');
    widthNode.appendChild(docNode.createTextNode(num2str(img_width)));
    sizeElement.appendChild(widthNode);

    heightNode = docNode.createElement('height');
    heightNode.appendChild(docNode.createTextNode(num2str(img_height)));
    sizeElement.appendChild(heightNode);

    depthNode = docNode.createElement('depth');
    depthNode.appendChild(docNode.createTextNode('1'));
    sizeElement.appendChild(depthNode);

    % segmented
    segmentedElement = docNode.createElement('segemented');
    segmentedElement.appendChild(docNode.createTextNode('0'));
    docRootNode.appendChild(segmentedElement);

    % object
    cls_judgment(cls,f_set,img_height,sig_width,sig_height,docNode,docRootNode);
%     cls_name = cls;
%     if strcmp(cls_name,'FH1')
%         [xmin,ymin,xmax,ymax] = CreateSignalAxisTxt(f_set,img_height,sig_width,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name,'FH2')
%          [xmin,ymin,xmax,ymax] = CreateSignalAxisTxt(f_set,img_height,sig_width,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name,'FH3')
%         [xmin,ymin,xmax,ymax] = CreateSignal3Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name, 'FH4')
%         [xmin,ymin,xmax,ymax] = CreateSignal4Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name, 'FH5')
%         [xmin,ymin,xmax,ymax] = CreateSignal5Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name, 'FH6')
%         [xmin,ymin,xmax,ymax] = CreateSignal6Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name, 'FH7')
%         [xmin,ymin,xmax,ymax] = CreateSignal7Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name, 'FH8')
%         [xmin,ymin,xmax,ymax] = CreateSignal8Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     elseif strcmp(cls_name, 'FH9')
%         [xmin,ymin,xmax,ymax] = CreateSignal9Axis(f_set,img_height,sig_height);
%         for i = 1 : length(f_set)
%               NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax);
%         end
%     end
    
  
    % xmlwrite
    xmlFileName = [filename,'.xml'];
    FH_xml_path = [img_path, xmlFileName];
    xmlwrite(FH_xml_path,docNode);
end

