#Ella Vainio
#March 5 2017
#Preprocessing 'poison' data

#Accsessing libraries
library (tidyr)
library (dplyr)
library (ggplot2)
library(FactoMineR) 

#loading the data
data("poison") 

#Structure of the poison data
str(poison) #55 observations,15 variable

#Filtering age variable <20
poison <- filter(poison, poison$Age < 20) # 47 observations

#Filtering variables, only symptomes
keep_columns <- c("Sick", "Nausea", "Vomiting", "Abdominals", "Fever", "Diarrhae") #6 variables

#Final data
poison_reason <- dplyr::select(poison, one_of(keep_columns)) #47 observations, 6 variables




write.csv(poison_reason, file = "poison_reason2.csv")


