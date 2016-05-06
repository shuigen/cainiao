setwd("C:/Users/shuigen/Desktop/Hadoop/天池/菜鸟分仓预测")
load("data.rdata")

head(item_store_feature2)
head(config)
str(item_store_feature2)
str(config)

require(ggplot2)
data(diamonds)
str(diamonds)
#散点图
g<-ggplot(diamonds,aes(x=carat,y=price))
g+geom_point(aes(color=color))+facet_wrap(~color)
g+geom_point(aes(color=color))+ facet_grid(cut~clarity)
ggplot(diamonds,aes(x=carat))+geom_histogram()+facet_wrap(~color)
ggplot(diamonds,aes(y=carat,x=1))+geom_boxplot()

require("lubridate")
install.packages("lubridate")
str(economics)
economics$year<-year(economics$date)
economics$month<-month(economics$date,label=TRUE)
econ2000 <- economics[which(economics$year>=2000),]

install.packages("scales")
require("scales")
str(econ2000)
gg<-ggplot(econ2000,aes(x=month,y=pop))
gg<-gg+geom_line(aes(color=factor(year),group=year))
gg<-gg+scale_color_discrete(name="Year")
gg<-gg+scale_y_continuous(labels=comma)
gg<-gg+labs(title="population Growth",x="month",y="Population")
gg
rm(gg)
install.packages("ggthemes")
require("ggthemes")
g2<-ggplot(diamonds,aes(x=carat,y=price))+geom_point(aes(color=color))
g2+theme_economist()+scale_colour_economist()
g2+theme_excel()+scale_colour_excel()
g2+theme_tufte()
g2+theme_wsj()
#编写R函数
say.hello <- function()
{
print("Hello,World!")
}
say.hello()
sprintf("Hello %s","Jared")

#控制语句
toCheck<-1
if(toCheck==1)
{
print("Hello")
}

check.bool <- function(x)
{
	if(x==1)
	{
	print("Hello")
	} else if(x==0)
	{
	print("goodbye")
	} else
	{
	print("confused")
	}
}

check.bool(1)
check.bool(0)
check.bool(2)

#循环
for(i in 1:10)
{
	print(i)
}
#11章、分组操作
theMatrix <-matrix(1:9,nrow=3)
apply(theMatrix,1,sum)
apply(theMatrix,2,sum)
nrow(theMatrix)

theList<-list(A=matrix(1:9,3),B=1:5,C=matrix(1:4,2),D=2)
lapply(theList,sum)



























