library(corrplot)
library(nFactors)
library(psych)
setwd("E:/KMMI")
data1 <- read.csv("Tugas.csv")
data1
data <- data1[,-1]
kor<-round(cor(data),2)
kor
corrplot(kor, order="hclust")
n.kmo<-KMO(kor)
n.kmo
data2<-data[,-7]
n.kmo1<-KMO(data2)
n.kmo1
kor2<-cor(data2)
uji.bartlett<-cortest.bartlett(kor2,n=50)
uji.bartlett
plot(nScree(x=kor2,model="factors"))
r.fak1<-fa(kor2,nfactors=3,n.obs=350,rotate="varimax", fm="pa")
r.fak1
load1<-round(r.fak1$loadings[,1:3],2)
load1
plot(load1,type="n",xlim=c(-0.85,0.85),xlab="Faktor 1",ylab="Faktor 2",main="Rotasi")
text(load1,labels=names(data2),col="blue")
abline(h=0,v=0)