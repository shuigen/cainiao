FileChange <-function(file){
#把全国表加上store_code字段
data <- read.csv(file,head=T)

}

FileDataModel <-function(file){
data <- read.csv(file,head=T)



}

file="E://大数据//天池//菜鸟-需求预测与分仓规划//CAINIAO data p1_20160408//item_feature1.csv"

summary(data)
summary(data$item_id)
data$item_id<-factor(data$item_id)
mode(data$item_id[[1]])

#数据头20条记录
head(data)
#每个列之间的相关性
data2<-data[,c(8:31)]
head(data2)
cor(data2)

#得到每个的线性回归方程
k<-by(data,data$item_id,function(m) lm(m[,27]~m[,28]))
summary(k$"197")

plot(k$"197")


require("dplyr")

item_id_197=subset(data,item_id=="197")

#得到item_id为197的商品记录信息
head(item_id_197)
length(item_id_197[,1])

plot(item_id_197[,27],item_id_197[,28])
plot(item_id_197[,27])

abline(k$"197")

mode(item_id_197)
#得到每条记录的序列号
item_id_197[,32]<-c(1:444)
summary(item_id_197)

lm_item_id_197 <-lm(item_id_197[,30]~item_id_197[,32])
#画出点
plot(item_id_197[,32],item_id_197[,30])
#画出线性回归线
abline(lm_item_id_197)
summary(lm_item_id_197)

#对数据排序
item_id_197_sort <- item_id_197[order(item_id_197$V32),]
item_id_197_sort
lm_item_id_197_sort_x=item_id_197_sort[,32]
lm_item_id_197_sort_y=item_id_197_sort[,30]

lm_item_id_197_sort <-lm(lm_item_id_197_sort_y~lm_item_id_197_sort_x)

#画出点
plot(item_id_197_sort[,32],item_id_197_sort[,30])
#画出线性回归线
abline(lm_item_id_197_sort)
summary(lm_item_id_197_sort)



item_id_197_sort_x=c(445,446,447,448)
lm_item_id_197_sort_x=data.frame(lm_item_id_197_sort_x=item_id_197_sort_x)
item_id_197_sort_predict<-predict(lm_item_id_197_sort,newdata=lm_item_id_197_sort_x,interval="prediction",level=0.95)

item_id_197_sort_predict

plot(item_id_197_sort_x,item_id_197_sort_predict[,1])
abline(lm_item_id_197_sort);
plot(lm_item_id_197_sort)


#检验异方差
res.test<-residuals(lm_item_id_197_sort)
library(lmtest)

gqtest(lm_item_id_197_sort)

install.packages("lmtest")


