## Assignment 3 _ Description statistics _ Sang Hwa Lee ##

# Task 1 

# Install the package 
library(dplyr)
library(tidyverse)
library(ggpubr)


# In my case " library " doesn't work, so i manually installed packages

install.packages("dplyr")
install.packages("tidyverse")
install.packages("ggpubr")

#-------------------------------------------------------------------------------------------------

# Task 2
# Download " happiness.csv " file.

happydata = read.csv("happiness.csv")
head(happydata)

# After loading the data, I can check each item
# (‘happiness score’, ‘health score’, ‘freedom score’ and ‘trust score’ of countries from 4 regions)

# ------------------------------------------------------------------------------------------------

# Task 3
# According to the example code, I have to write the "import" code. However, the "import" code does not work.

happydata = import("happiness.csv")

View(happydata)

#-------------------------------------------------------------------------------------------------

# Task 4
# Browse and understand the data in each column.
# This includes quantities and the range.
summary(happydata$Happiness.Score)
summary(happydata$Region)
summary(happydata$Health)
summary(happydata$Freedom)
summary(happydata$Trust)

#-------------------------------------------------------------------------------------------------


# Task5
# Calculate mean, median, mode for Happiness.score 

# mean function
mean(happydata$Happiness.Score, na.rm = TRUE)

# median function
median(happydata$Happiness.Score, na.rm = TRUE)

# mode function
mode(happydata$Happiness.Score)


# Calculating mode using function.
hs <- happydata$Happiness

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

(getmode(hs))
# The mode is 5.192



#-------------------------------------------------------------------------------------------------

# Task 6
# Calculate standard deviation, variance, min, max, range, and quantile for Happiness.Score.

# Standard deviation
sd(happydata$Happiness.Score)

# Variance
var(happydata$Happiness.Score)

# Min
min(happydata$Happiness.Score)

# Max
max(happydata$Happiness.Score)

# Range
range(happydata$Happiness.Score)

# Quantile
quantile(happydata$Happiness.Score)


#-------------------------------------------------------------------------------------------------

# Task 7
# Use the sapply() function to calculate the mean and standard deviation for all 4 scores.

sapply(happydata, mean,na.rm = TRUE)
sapply(happydata, sd,na.rm = TRUE)


#-------------------------------------------------------------------------------------------------

# Task 8
# Use the summary() function to get a summary statistics for the entire dataset.

summary(happydata)


#-------------------------------------------------------------------------------------------------

# Task 9
# Calculate the mean and standard deviation of Happiness.Score for different regions. 
happydata %>%
  group_by(Region) %>%
  get_summary_stats(Happiness.Score, type="mean_sd")

