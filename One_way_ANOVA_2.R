x<-c(14,13,9,15,11,13,14,11,
     10,12,7,11,8,12,9,10,13,9,10,9,
     11,5,9,10,6,8,8,7)
# 方案I的数据为8个，方案II的数据为12个，方案III的数据为8个
A<-factor(c(rep(1,8),rep(2,12),rep(3,8)))
time<-data.frame(x,A)
# 作方差分析
time.aov<-aov(x~A,data=time)
res<-summary(time.aov)
print(res)

