library(dplyr)
library(tidyr)
library(tidyverse)
mov<-read.csv("C:/Users/Simran/Desktop/movie_analysis/MoviesOnStreamingPlatforms.csv")
str(mov)

table (complete.cases(mov))
summary  (mov [!complete.cases(mov),])

#From the dataset,it is easy to infer that some cleaning need to be done before we can decipher information.Lets do it first.

#Changing Rotten.Tomatoes to Rotten_Tomatoes

mov<-mov%>% 
  setNames(names(.)%>% 
             str_replace_all("\\.","_"))

#Removing unnecessary columns

mov<-mov[-c(7:11)]  
summary(mov)

#Removing NA values

mov<-mov %>%
  drop_na()


write.csv(mov, file = "C:/Users/Simran/Desktop/movie_analysis/TidyMovie.csv")

