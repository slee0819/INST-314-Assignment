## Sang Hwa Lee _ Assignment 4 - Data visualization

library(ggplot2)
library(ggpubr)

# Task 1 : Import the dataset.

happydata = read.csv("happiness.csv")
head(happydata)
happydata = import("happiness.csv")
View(happydata)

##-----------------------------------------------------------------------------------


# Task 2 : Browse and understand the happydata in each column.

print(happydata)
str(happydata)
summary(happydata)


##-----------------------------------------------------------------------------------


# Task 3 :  Create a bar chart about number of region.

happydata$Region <- as.factor(happydata$Region)

plot(happydata$Region,
     xlab=substitute(paste(bold("Region"))),
     ylab=substitute(paste(bold("Count"))),
     col = table(happydata$Region),
     main="Number of Countries in each Region")

##-----------------------------------------------------------------------------------


# Task 4 : Create the scatter plot with the happiness score(y value), rowID(x value).

happydata$ID <- row.names(happydata)
plot(x = happydata$ID, y = happydata$Happiness.Score,
     xlab = substitute(paste(bold("Row ID"))),
     ylab = substitute(paste(bold("Happiness"))),
     main = "Happiness.Score vs Row ID",pch = 19)

##-----------------------------------------------------------------------------------


# Task 5 : Use the plot(), Create a boxplot showing the difference in happiness score among regions.

plot(Happiness.Score~Region,
     data=happydata,
     main="Happiness Score for each region",
     xlab=substitute(paste(bold("Region"))),
     ylab=substitute(paste(bold("Happiness Score"))),
     col = c("green","yellow","blue","red"),
     border="brown")

##-----------------------------------------------------------------------------------


# Task 6 : Use the ggboxplot(), Create a boxplot showing difference in happiness score among regions.

ggboxplot(happydata, "Region", "Happiness.Score", width = 0.9, fill = "Region")


##-----------------------------------------------------------------------------------

# Task 7 : Create a histogram for happiness  scores.

hist(happydata$Happiness,xlab = substitute(paste(bold("Happiness.Score"))),
     ylab = substitute(paste(bold("Frequency"))),
     main = "Happiness Frequency Distribution")

##-----------------------------------------------------------------------------------

# Task 8 : Create a histogram for health scores.

hist(happydata$Health,xlab = substitute(paste(bold("Health Score"))),
     ylab = substitute(paste(bold("Frequency"))),
     main = "Health Score Frequency Distribution")

##-----------------------------------------------------------------------------------

# Task 9 : Create a scatter plot illustrating the relationship between happiness score and health score.

plot(x = happydata$Health,y = happydata$Happiness.Score,
     xlab = substitute(paste(bold("Health Score"))),
     ylab = substitute(paste(bold("Happiness"))),
     main = "Happiness vs Health Score",pch = 19)

##-----------------------------------------------------------------------------------
     
     # Thank you # - Sang Hwa Lee

