library("here")
library("skimr") #Facilita el resumen de datos y permite hojearlos mas rapido
library("janitor") #Tiene funciones para la limpieza de datos
library("dplyr") #Funciones de limpieza
library("palmerpenguins") #Fuente de datos
data("penguins")
pinguino <- penguins %>%
  rename(especies = species) %>%
  rename(isla = island) %>%
  rename(anio = year)
skim_without_charts(pinguino)
pinguino %>%
  select(-anio) #Selecciona todas las columnas menos año

pinguino %>% 
  arrange(-bill_length_mm) #Ordena los datos de forma descendente

islas_ordenadas <- pinguino %>%  #Islas con cantidades maximas
  group_by(isla) %>% 
  drop_na() %>% 
  summarise(mean_bill_lenght_mm=mean(bill_length_mm))

pinguino %>% 
  filter(isla=="Torgersen") %>% 
  drop_na() #Filtra informacion y quita los NA