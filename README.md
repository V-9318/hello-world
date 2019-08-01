# 对于灰度共生矩阵的一些看法
    灰度共生矩阵是一种纹理特征提取的统计方法之一，主要是对于灰度对出现频数进行统计
    从而去捕获到像素灰度在空间上的分布带来的纹理特征。

## 具体描述
    在图像中任意一点（x,y）及偏离它的一点(x+a,y+b)(其中a，b为整数，认为定义)构成点对。设该点对的灰度值为(f1,f2),假
    设图像的最大灰度级为L,则f1与f2的组合共有L*L种。对于整福图像，统计每一种(f1,f2)值出现的次数，然后排列成一个方
    阵，再用(f1,f2)出现的总次数将它们归一化为出现的概率P(f1,f2)，由此产生的矩阵为灰度共生矩阵。普通的纹理一般扫描方
    向并没有那么严格的要求，一般就选择0°、45°、90°、135°变可将纹理特征描绘清楚，对于更加细致的纹理，也许需要定义更多
    的扫描方向。

## 扫描示例
![Image test](https://raw.githubusercontent.com/V-9318/hello-world/master/img/123.jpg)
![Image test](https://raw.githubusercontent.com/V-9318/hello-world/master/img/456.jpg)

## 部分特征提取计算公式
对比度，对比度是对纹理特征的直接描绘，其直接说明对比度大说明轮廓明显则说明纹理更清晰
![Image](https://github.com/V-9318/hello-world/blob/master/img/1.gif)
相关度，是对于灰度相似性的描绘，灰度相似性应该也在某种程度上对于纹理特征起到一定的贡献
![Image](https://github.com/V-9318/hello-world/blob/master/img/2.gif)
能量，是矩阵元素灰度值的平方和，从能量的角度可以看出，由基本不等式可得当多个矩阵元素灰度值越接近则其2-范数取得越大值
![Image](https://github.com/V-9318/hello-world/blob/master/img/3.gif)
熵，是对于物体规则度的直接阐述，熵能够说明灰度的混乱度进而说明纹理的复杂程度
![Image](https://github.com/V-9318/hello-world/blob/master/img/4.gif)