clear; clc;
I = imread('1.jpg');
% 总体灰度图，应该是三通道求平均
C = rgb2gray(I)
% 单独通道的灰度图
B = I(:,:,3)
subplot(121)
imshow(B)
subplot(122)
imshow(C)
GLCM = graycomatrix(C,'Offset',[0 1;-1 1;-1 0;-1 -1]);
figure
imshow(GLCM(:,:,1))
% GLCMS = graycomatrix(I,PARAM1,VALUE1,PARAM2,VALUE2,...)
% 通过helpgraycomatirx之后得到的接口说明，‘Offset’则可以指定灰度共生矩阵的扫描方向
% 而后跟的参数矩阵则可以指定具体为0°、45°、90°还是135°，并根据你所给出的扫描方向
% 矩阵创建一个有L行L列（L为灰度点对组合总数)，并包含给出扫描方向分别创建的灰度共生矩阵
% 的三维矩阵
stats = graycoprops(GLCM,{'contrast','homogeneity','correlation','energy'});
% 输入特征矩阵，而后在后面给出你想要获得的特征，返回特征结构体