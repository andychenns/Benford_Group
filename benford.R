#data source: http://www.citypopulation.de/China-UA.html

library(tidyverse)
library(benford.analysis) # loads package data(corporate.payment) # loads data
data(corporate.payment) # loads data
bfd.cp <- benford(corporate.payment$Amount)
plot(bfd.cp)
bfd.cp

library(readxl)
chinese_cencus <- read_excel("chinese cencus.xlsx")
df <- na.omit(chinese_cencus)
df1 <- select(df, Population, Population__1, Population__2)



bfd.pop <- benford(as.numeric(df1$Population),
                  number.of.digits = 1)
plot(bfd.pop) #Census 1990
bfd.pop1 <- benford(as.numeric(df1$Population__1),
                   number.of.digits = 1)
plot(bfd.pop1) #Census 2000
bfd.pop2 <- benford(as.numeric(df1$Population__2),
                    number.of.digits = 1)
plot(bfd.pop2) #Census 2010







