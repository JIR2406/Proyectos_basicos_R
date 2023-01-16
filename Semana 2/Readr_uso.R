library(readr)
bookings_df <- read_csv("hotel_bookings.csv", locale=locale(encoding="latin1")) #El locale arregla error Invalid multibyte string element 1
head(bookings_df)
colnames(bookings_df)
new_df <- select(bookings_df, `adr`, adults)

