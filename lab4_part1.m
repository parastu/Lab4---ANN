load bindigittrn.mat
load bindigittst.mat
[k1,kk1] = size(bindigittrn());
[k2,kk2] = size(bindigittst());
figure(1)
for i = 1:10
   
    subplot(5,2,i)
    imshow(reshape(bindigittrn(i,:),28,28));
    
    
   
end
figure(2)
for i = 1:10
 subplot(5,2,i)
    imshow(reshape(bindigittst(i,:),28,28));
end
% imshow(reshape(bindigittrn(4,:),28,28));
%  hold on
% %  imshow(reshape(bindigittrn(k2,:),28,28));