library (tidyr)
library (dplyr)
library (ggplot2)
library(FactoMineR)
data("poison")

poison <- filter(poison, poison$Age < 20)

keep_columns <- c("Sick", "Nausea", "Vomiting", "Abdominals", "Fever", "Diarrhae")

poison_reason <- dplyr::select(poison, one_of(keep_columns))

write.csv(poison_reason, file = "poison_reason2.csv")
