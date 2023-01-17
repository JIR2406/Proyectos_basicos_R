#install.packages("tidyverse")
#install.packages("ggplot2")
#install.packages("palmerpenguins")
library(tidyverse)
library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)
#ggplot(data = penguins)+geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species,linetype=species)) #Grafico de barras Linetype hace puntuadas las lineas
