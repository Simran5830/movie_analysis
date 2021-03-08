library(dplyr)
mov<-read.csv("C:/Users/Simran/Desktop/movie_analysis/TidyMovie.csv")
summary(mov)
table(mov$IMDb)
table(mov$Netflix)
table(mov$IMDb, mov$Netflix)

summary(table(mov$Rotten.Tomatoes, mov$Prime.Video))

# Quantile for 5% probablity
quantile(mov$Runtime, .05)

# Quantile with 5% and 95% probablity
quantile(mov$Runtime, c(.05, .95))

# Quantile interval of 25% in the probabilties
quantile(mov$Runtime)

#conersion
scale(mov$ReleaseYear)

# Using the t.test
t.test(mov$IMDb, mu = 7)
# p-value <  0.05 so it's unlikely that mean is 40
# null hypothesis is rejected

# Using the t.test and asking if the mean of points can be 40 with a confidence level of 99%
t.test(mov$IMDb, conf.level = 0.99, mu = 40)
# p-value <  0.05 so it's unlikely that mean is 40
# null hypothesis is rejected

# Calcuting the confidence interval for the median of points using the Wilcox Test# Calcuting the confidence interval for the median of points using the Wilcox Test
wilcox.test(mov$IMDb, conf.int = TRUE)

# Using the Shapiro Test for normality
shapiro.test(mov$IMDb)

# p-value > 0.05 so it's normally distributed
# Checking if the correlation between points and the number of wins is significant
cor.test(mov$IMDb, mov$Runtime)

# p-value < 0.05 so a significant correlation exists
# Checking if the correlation between points and the number of yellow cards is significant
cor.test(mov$IMDb, mov$ReleaseYear)

# p-value > 0.05 so a significant correlation does not exist
