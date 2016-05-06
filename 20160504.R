config_file="C://Users//shuigen//Desktop//Hadoop//Ìì³Ø//²ËÄñ·Ö²ÖÔ¤²â//CAINIAO data p1_20160408//config1.csv"
item_feature_file="C://Users//shuigen//Desktop//Hadoop//Ìì³Ø//²ËÄñ·Ö²ÖÔ¤²â//CAINIAO data p1_20160408//item_feature1.csv"
item_store_feature_file="C://Users//shuigen//Desktop//Hadoop//Ìì³Ø//²ËÄñ·Ö²ÖÔ¤²â//CAINIAO data p1_20160408//item_store_feature1.csv"

head(item_store_feature2)
head(config)
str(item_store_feature2)
str(config)
#configµÄÍ¼
ggplot(config,aes(x=less,y=more)) + geom_point(aes(color=store_code))+facet_wrap(~store_code)
ggplot(config,aes(x=less,y=more)) + geom_point(aes(color=store_code))+facet_grid(~store_code)

#item_store_feature2µÄÍ¼
ggplot(item_store_feature2,aes(x=date,y=qty_alipay_njhs))+geom_point(aes(color=store_code))+facet_wrap(~store_code)
ggplot(item_store_feature2,aes(x=date,y=qty_alipay_njhs))+geom_point(aes(color=store_code))+facet_wrap(cate_id~store_code)
ggplot(item_store_feature2,aes(x=date,y=qty_alipay_njhs))+geom_point(aes(color=store_code))+facet_wrap(~cate_id)
ggplot(item_store_feature2,aes(x=store_code,y=qty_alipay_njhs))+geom_boxplot()
ggplot(item_store_feature2,aes(x=store_code,y=qty_alipay_njhs))+geom_point()+geom_violin()

g<-ggplot(item_store_feature2,aes(x=date,y=qty_alipay_njhs))
g+geom_line()

config_all<-config[which(config$store_code=="all"),]
str(config_all)



































