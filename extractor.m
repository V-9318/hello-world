clear; clc;
I = imread('1.jpg');
% ����Ҷ�ͼ��Ӧ������ͨ����ƽ��
C = rgb2gray(I)
% ����ͨ���ĻҶ�ͼ
B = I(:,:,3)
subplot(121)
imshow(B)
subplot(122)
imshow(C)
GLCM = graycomatrix(C,'Offset',[0 1;-1 1;-1 0;-1 -1]);
figure
imshow(GLCM(:,:,1))
% GLCMS = graycomatrix(I,PARAM1,VALUE1,PARAM2,VALUE2,...)
% ͨ��helpgraycomatirx֮��õ��Ľӿ�˵������Offset�������ָ���Ҷȹ��������ɨ�跽��
% ������Ĳ������������ָ������Ϊ0�㡢45�㡢90�㻹��135�㣬����������������ɨ�跽��
% ���󴴽�һ����L��L�У�LΪ�Ҷȵ���������)������������ɨ�跽��ֱ𴴽��ĻҶȹ�������
% ����ά����
stats = graycoprops(GLCM,{'contrast','homogeneity','correlation','energy'});
% �����������󣬶����ں����������Ҫ��õ����������������ṹ��