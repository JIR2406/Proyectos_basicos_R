#install.packages("tidyverse")
#install.packages("palmerpenguins")
#install.packages("ggplot2")
library(tidyverse)
library(palmerpenguins)
library(ggplot2)
data("penguins")
View(penguins)
#ggplot(data=penguins,mapping = aes(x=flipper_length_mm, y=body_mass_g,shape=species,color=species,size=species))+geom_point() #Funcion con estetica
#ggplot(data=penguins,mapping = aes(x=flipper_length_mm, y=body_mass_g,alpha=species))+geom_point() #Otro estilo de visualización con alpha
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g,color=species))+
  facet_wrap(~species) #Facet_warp(variable) nos deja hacer tres partes diferentes 
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g,color=species))+
  facet_grid(sex~species)+labs(title = "Genero y Especies", subtitle = "Informe de relacion sexo - especie",caption = "Datos publicos recolectados por Dr. Kristen Gorman") # En vertical y horizontal, especies y sexo

diagrama <- ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g,color=species))+
  labs(title = "Genero y Especies", subtitle = "Informe de relacion sexo - especie",caption = "Datos publicos recolectados por Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color= "blue",fontface="bold",size=3.5,angle=10)
ggsave("Generos_Especies.png")
view(diamonds)
ggplot(data=diamonds)+geom_bar(mapping = aes(x=color,fill=cut))+facet_wrap(~color)
