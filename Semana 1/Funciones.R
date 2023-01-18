install.packages("tidyverse")
library(tidyverse)
head(diamonds) #Muestra las columnas y las primeras filas de datos
str(diamonds) #Devuelve resumen de cada columna en sus datos dispuestos horizontalmente
glimpse(diamonds) #Lo mismo que str
colnames(diamonds) #Devuelve una lista de nombre de columnas de su conjunto de datos
rename(diamonds, carat_new = carat) #Cambia el nombre de las columnas o variables
rename(diamonds, carat_new = carat, cut_new=cut) #Cambiar el nombre de mas de una variable
summarize(diamonds, mean_carat = mean(carat)) #Genera una amplia gama de estadisticas resumidas para sus datos
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point() #Crea una visualizacion como diagrama de dispersion geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point() #Cambiar el color
facet_wrap() #Grafico diferente para cada corte
rename()