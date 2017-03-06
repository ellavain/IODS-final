
#Accessing libraries
library (tidyr)
library (dplyr)
library (ggplot2)
library(FactoMineR)

#Accessing the data
data("poison")

#Information regarding data frame
https://rdrr.io/cran/FactoMineR/man/poison.html 
https://rdrr.io/cran/FactoMineR/man/poison.text.html 


#Summary and structure of data frame
summary(poison) #Age varible odd, max. value 88
str(poison) #55 observations, 15 variables

#Excluding individuals over the age of 20
poison <- filter(poison, poison$Age < 20) #47 observations, 15 variables


#Choosing only symptome variables
keep_columns <- c("Sick", "Nausea", "Vomiting", "Abdominals", "Fever", "Diarrhae") 
poison_reason <- dplyr::select(poison, one_of(keep_columns))

summary(poison_reason) #all variables chategorical variables, has a choice of 'yes' or 'no'
str(poison_reason) #47 observations, 6 variables



write.csv(poison_reason, file = "poison_reason2.csv")





