library(ggplot2)
getwd()

train<-read.csv("train.csv")
train

dim(train)
str(train[, c(1:5,81)])

ggplot(data=train,aes(x = YearBuilt, y = SalePrice))+geom_point(colour="red")

ggplot(data=train,aes(x = YrSold, y = SalePrice, group = YrSold))+geom_boxplot(colour="black")

ggplot(data = train, aes(x = MoSold, y = SalePrice, group = MoSold))+geom_boxplot(colour="blue")

ggplot(data = train, aes(x = MoSold)) + geom_histogram(colour="green") +stat_bin(bins = 30, binwidth = 1) +
geom_density(aes(y = ..density..)) 

ggplot(data = train, aes(x = X1stFlrSF, y = SalePrice)) + geom_point(colour="red")

ggplot(data = train, aes(x = FireplaceQu, y = SalePrice)) + geom_boxplot(colour="black")

ggplot(data = train, aes(x = MSZoning, y = SalePrice)) +  geom_boxplot(colour="blue") 

ggplot(data = train, aes(x = LotArea, y = SalePrice)) + geom_point(colour="green") 

ggplot(data = train, aes(x = LotConfig, y = SalePrice)) + geom_boxplot(colour="orange")

ggplot(data = train, aes(x = ScreenPorch, y = SalePrice)) + geom_point(colour="red")

ggplot(data = train, aes(x = LowQualFinSF, y = SalePrice)) + geom_point(colour="black") 

ggplot(data=train, aes(LotFrontage, SalePrice)) +
  geom_point(aes(color ="black"), na.rm = T) +
  geom_smooth(method = "lm", se = FALSE, na.rm = T) +
  scale_x_continuous("LotFrontage") +
  scale_y_continuous("SalePrice") +
  theme_bw() + facet_wrap( ~ SaleType) +
  theme(legend.position = "none")
                                                             
