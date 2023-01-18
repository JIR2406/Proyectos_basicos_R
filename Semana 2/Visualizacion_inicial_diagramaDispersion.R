#install.packages("tidyverse")
#install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
View(starwars)
#ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data=starwars,mapping = aes(x=birth_year, y=height))+geom_point() #Funcion basica de visualización
