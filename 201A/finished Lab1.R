# problem 1
age <- c(18, 19, 23,19, 24, 20, 18, 21, 22, 23,18)
age <- c(18,19,23,19,24,20,18,21,22,23,18)


# space for problem 1b
mean(age)
median(age)
min(age)
max(age)
range(age)
quantile(age)
sd(age)
var(age)
summary(age)
length(age)
sum(age)
IQR(age)
table(age)

# space for problem 1c
?max()

# space for problem 1d
?sd()

#----------------------------
# problem 2

score <- c(75,77,94,75,79,80,66,82,86,80,78)

id <- 1:11

df <- data.frame(id=id,age=age,score=score)

df

# problem 2d
df[,1]
df[,2]
df[1,1]
df[2,2]
df[1,]
df[2,]
df$id
df["id"]
df$id[3]
df$age
df$score
df["score"]

#------------------------
# Problem 3

# this is my directory but it will be different for youRe
setwd("~/201A Lab")
df <- read.table('testData.txt', sep = ',')
df

#----------------------
# Problem 4
age2 <-age^2
df$age2 <-age^2
df
age+1
age+age

# ------------------------
# Problem 5
df[1,2] <-19
df
