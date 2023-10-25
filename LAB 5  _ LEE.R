## Sang Hwa Lee - Assignment 5 : Comparing means of one variable ##


library(tidyverse)
library(ggpubr)
library(rstatix)
library(datarium)

#_______________________________________________________________________________________________________

# Task 1 - import the iristtest.csv file 

iristtest <- read.csv("iristtest.csv")
view(iristtest)

# independent variable : Species : setosa VS. versicolor  
# dependent variable : Petal.Length

# extract a subset of random sample data from each group
set.seed(123)
iristtest %>% sample_n_by(Species, size = 2)

#_______________________________________________________________________________________________________


# Task 2 - Compute descriptive statistics and create boxplot for petal length and species. 

# descriptive statistics
iristtest %>%
  group_by(Species) %>%
  get_summary_stats(Petal.Length, type = "mean_sd")

# create the boxplot 
ggboxplot(iristtest,x="Species",y="Petal.Length")

#_______________________________________________________________________________________________________

# Task 3 - After using the appropriate test, check for significant differences in Petal.length.


# 1) First check - outliers
iristtest %>%
  group_by(Species) %>%
  identify_outliers(Petal.Length)
# 5 outliers were identified in the species group. But they are not extreme outliers. So it's OK to run the test.



# 2) Second check - Check normality using the Shapiro wilk test
iristtest %>%
  group_by(Species) %>%
  shapiro_test(Petal.Length)
# After check, I can see the p-value is lower than 0.5 (P < 0.5), that means p is significant. 



# 3) Third check _ Draw a qqplot
ggqqplot(iristtest, x = "Petal.Length", facet.by =  "Species")

# In qqplot, the closer the data points are to the trend line, the more it is considered a normal graph. .
# But what I can check now is that the points are so far out of the trend line.
# Therefore, I can considered that the data are not normally distributed and are not close to the normal distribution.



# 4) Optional check - Levene test
iristtest %>%
  levene_test(Petal.Length ~ Species)



# 5) Final Check - Compute t
IToutput <- iristtest %>%
  t_test(Petal.Length ~ Species) %>%
  add_significance()
IToutput

# Overall, this data is considered to have significant differences.
#_______________________________________________________________________________________________________



# Task 4
weightTtest <- read.csv("weightTtest.csv")
view(weightTtest)


# Task 5
weightTtest %>%
  group_by(weight) %>%
  get_summary_stats(before, type = "mean_sd")

# create the boxplot 
ggboxplot(iristtest,x="Species",y="Petal.Length")


# Check for outliers

iristtest %>%
  group_by(Species) %>%
  identify_outliers(Petal.Length)
