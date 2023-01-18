install.packages("readr")
install.packages("dplyr")
library(dplyr)
library(readr)
cacao <- read.csv("flavors_of_cacao.csv")
colnames(cacao)
cacao2 <- cacao %>% 
  select(Rating,Cocoa.Percent,Company...Maker.if.known.,Company.Location)
cacao2 %>% 
  summarise(cacao2,Rating)

best <- cacao2 %>% 
  filter(Cocoa.Percent>=75, Rating >=3.9)
View(best)
install.packages("ggplot2")
library(ggplot2)
ggplot(data = best)+geom_bar(mapping = aes(x=Company.Location,fill=Rating))
