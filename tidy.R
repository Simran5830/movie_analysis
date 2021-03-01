library(dplyr)
library(tidyr)
mov<-read.csv("C:/Users/Simran/Desktop/movie_analysis/MoviesOnStreamingPlatforms.csv")
str(mov)

table (complete.cases(mov))
summary  (mov [!complete.cases(mov),])

mov<-mov %>%
  pivot_longer(cols = c(`ID`, `Year`), names_to = "Number", values_to = "ReleaseYear")
mov
mov %>%
  pivot_wider(names_from =Title , values_from = IMDb)


mov<-mov %>%
  separate(
    col = Genres,
    into = c("Action", "Adventure"),
    convert = TRUE
  )
mov
mov<-mov %>% 
  unite(col = "Genre", Action,Adventure)
mov


write.csv(mov, file = "C:/Users/Simran/Desktop/movie_analysis/TidyMovie.csv")

