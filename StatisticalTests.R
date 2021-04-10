library(dplyr)
mov<-read.csv("C:/Users/Simran/Desktop/movie_analysis/TidyMovie.csv")
summary(mov)
table(mov$IMDb)
table(mov$Netflix)
table(mov$IMDb, mov$Netflix)

summary(table(mov$Rotten.Tomatoes, mov$Prime.Video))

summary(mov)  
table(mov$IMDb)
table(mov$Year)
table(mov$IMDb,mov$Year)

summary(table(mov$IMDb,mov$Year))

#p-value<0.05 : fails to provide any evidence

# Quantile for number of movies with 5% probability

quantile(mov$IMDb,0.05)

# Quantile for number of movies with an interval of 25% in the probabilities
quantile(mov$IMDb)

# Using t.test for checking if mean can be 7

t.test(mov$IMDb, mu=7.0)

#As p-value<0.05, it's unlikely that true mean is 7
   
#Null hypothesis is rejected

# Using t.test checking if mean is 7 with a confidence level of 99%

t.test(mov$IMDb,conf.level = 0.99, mu=7.0)

#p-value is very small so it is very unlikely that mean is 7   

#Null hypothesis is rejected**

#Calculating confidence interval for median of IMDb using Wilcox test

wilcox.test(mov$IMDb,conf.int = TRUE)

# Checking if correlation between IMDb and Runtime is significant.

cor.test(mov$IMDb,mov$Runtime)

#p-value<0.05 so a significant correlation exist
