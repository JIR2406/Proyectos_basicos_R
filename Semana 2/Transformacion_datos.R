id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
emplooye <- data.frame(id,name,job_title)
print(emplooye)
separado <- separate(emplooye,name,into = c("first_name","last_name"),sep = " ")
unido <- unite(separado,"name",first_name,last_name,sep=" ")
pinguino <- penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000) %>% 
  drop_na()
View(pinguino)
