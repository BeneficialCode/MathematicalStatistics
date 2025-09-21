# X是数据
X<-c(76,67,81,56,51,82,69,96,59,70,
     68,59,67,54,42,63,56,64,58,37)
# A是时间因素，产生水平因子，A的个数为4，每个A因素有5个元素
A<-gl(4,5)
# B是地点因素，B的个数为5，B的重复数为1，数据的总个数为20
B<-gl(5,1,20)
particles<-data.frame(X,A,B)
# 作方差分析
parti.aov<-aov(X~A+B,data=particles)
# 输出结果
res<-summary(parti.aov)
print(res)