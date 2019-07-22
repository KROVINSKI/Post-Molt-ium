#####
## Dungeness Crab Zoea Mortality Event Analysis (3/1/2019 - 7/09/2019) 
####

library(ggplot2)
library(numbers)


#Setting the Working Directory of Well Event Data at Conclusion of Dungeness Zoea Study
setwd("~/Documents/NOAA_VCC_WA_2018/DGN_WellEventData")

d <- read.csv("WellEventData.csv", stringsAsFactors = FALSE)


#Creating a new vector from "Day". Selecting all values in the Day column and labeling as death date
DeathDate <- Day[c(1:137573])]


#Creating a new vector and column using the list from Day Column to divide b 3. Remained is days from feeding
rem3 <- rem(DeathDate/3, x > 9)
#new column name
d$rem3