function NodeElement(docNode,docRootNode,i,cls,xmin,ymin,xmax,ymax)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
        objectElement = docNode.createElement('object');
        docRootNode.appendChild(objectElement);

        nameNode = docNode.createElement('name');
        nameNode.appendChild(docNode.createTextNode(cls));                       % 形参1：sig1  :cls_name
        objectElement.appendChild(nameNode);

        poseNode = docNode.createElement('pos');
        poseNode.appendChild(docNode.createTextNode('Unspecified'));
        objectElement.appendChild(poseNode);

        truncatedNode = docNode.createElement('truncated');
        truncatedNode.appendChild(docNode.createTextNode('0'));
        objectElement.appendChild(truncatedNode);

        difficultNode = docNode.createElement('difficult');
        difficultNode.appendChild(docNode.createTextNode('0'));
        objectElement.appendChild(difficultNode);

        %bndbox
        bndboxNode = docNode.createElement('bndbox');
        objectElement.appendChild(bndboxNode);

        xminNode = docNode.createElement('xmin');
        xminNode.appendChild(docNode.createTextNode(num2str(xmin(i))));                %形参2：num2str(xmin);
        bndboxNode.appendChild(xminNode);

        yminNode = docNode.createElement('ymin');
        yminNode.appendChild(docNode.createTextNode(num2str(ymin(i))));                %形参3：num2str(ymin);
        bndboxNode.appendChild(yminNode);

        xmaxNode = docNode.createElement('xmax');
        xmaxNode.appendChild(docNode.createTextNode(num2str(xmax(i))));                %形参4：num2str(xmax);
        bndboxNode.appendChild(xmaxNode);

        ymaxNode = docNode.createElement('ymax');
        ymaxNode.appendChild(docNode.createTextNode(num2str(ymax(i))));                %形参5：num2str(ymax);
        bndboxNode.appendChild(ymaxNode);
end

