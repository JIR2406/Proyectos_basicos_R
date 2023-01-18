#install.packages("Tmisc")
#install.packages("datasauRus")
library(Tmisc)
data("quartet")
View(quartet)
library(skimr)
quartet %>% 
  group_by(set) %>% 
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))
library(datasauRus)
library(SimDesign)
actual_temp <- c(68.3,70,72.4,71,67,70)
prediccion_temp <- c(67.9,69,71.5,70,67,69)
bias(actual_temp,prediccion_temp) #Hace una comparacion
onj  <- data("ToothGrowth")

skim_without_charts(onj)
rename()