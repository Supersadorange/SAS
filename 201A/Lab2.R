Acyanotic <- c(13.1, 14.0, 13.0, 14.2, 11.0, 12.2, 13.1, 11.6, 14.2, 20.5, 13.4, 13.5, 11.6, 12.1, 13.5, 13.0, 14.1, 14.7, 12.8)


Cyanotic <- c(13.0, 16.8, 17.6, 14.8, 13.9, 14.6, 13.0, 17.5, 14.8, 15.1, 19.3, 5.4)

# fill in the NA's with functions we learned in lab 1.

# counts

n_a <- NA
n_c <- NA

# means

mean_a <- NA
mean_c <- NA

# standard deviations 

sd_a <- NA
sd_c <- NA

# median

median_a <- NA
median_c <- NA

# quantiles

quantile_25_a <- NA
quantile_25_c <- NA

quantile_75_a <- NA
quantile_75_c <- NA

# iqr

iqr_a <- NA
iqr_c <- NA

# range

range_a <- NA
range_c <- NA

# ---------------------------------
# Problem 2

df <- data.frame(c(Acyanotic, Cyanotic), c(rep('Acyanotic', n_a), rep('Cyanotic', n_c)))

colnames(df) <- c('Hemoglobin Concentration', 'Diagnosis')
df$Diagnosis <- factor(df$Diagnosis)

# the box plot
ggplot(data = df) + geom_boxplot(aes(x = Diagnosis, y = `Hemoglobin Concentration`, fill = Diagnosis))

# the hsitogram

g_a <- ggplot() + geom_histogram(aes(x = Acyanotic),
                                 fill = 'skyblue', 
                                 color = 'black', 
                                 binwidth = 1) + 
  xlim(0, 20)

g_c <- ggplot() + geom_histogram(aes(x = Cyanotic),
                                 fill = 'magenta', 
                                 color = 'black', 
                                 binwidth = 1) + 
  xlim(0,20)

# graphs 

grid.arrange(g_a, g_c, nrow = 2)
