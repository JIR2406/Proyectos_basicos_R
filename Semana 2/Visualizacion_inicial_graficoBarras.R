#install.packages("tidyverse")
#install.packages("ggplot2")
library(tidyverse)
library(ggplot2)
ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut,fill=clarity)) #Solo necesita un valor en el eje x, R se encarga de contar cuantas veces aparece la variable y las coloca en el eje Y
ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut,fill=cut))+facet_wrap(~cut)
