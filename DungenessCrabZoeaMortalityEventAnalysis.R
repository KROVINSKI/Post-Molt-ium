#####
## Dungeness Crab Zoea Mortality Event Analysis (3/1/2019 - 7/09/2019) 
####

library(ggplot2)
library(numbers)
library(survival)
library(surviveminer)


#Setting the Working Directory of Well Event Data at Conclusion of Dungeness Zoea Study
setwd("~/Documents/NOAA_VCC_WA_2018/DGN_WellEventData")

d <- read.csv("WellEventData.csv", stringsAsFactors = FALSE)

View(d)

## (d$day+ 0) is used for the offset to allign the feeding date with actual diet
d$MORTtoFEEDinterval <- rem((d$day+ 0),3)

ggplot(data = d[d$day > 9,], aes(day, MORTtoFEEDinterval)) + geom_point()

## (d$day+ 0) is used for the offset to allign with wellplate transfer date
d$MORTtoTRNXinterval <- rem((d$day+ 0),9)

ggplot(data = d[d$day > 9,], aes(day, MORTtoTRNXinterval)) + geom_point()



