library (tidyr)
library (dplyr)
library (ggplot2)
library(FactoMineR)
data("poison")

https://rdrr.io/cran/FactoMineR/man/poison.html <- what the data is based upon
https://rdrr.io/cran/FactoMineR/man/poison.text.html 


summary(poison)
str(poison)


keep_columns <- c("Sick", "Nausea", "Vomiting", "Abdominals", "Fever", "Diarrhae")
poison_reason <- dplyr::select(poison, one_of(keep_columns))

summary(poison_reason)
str(poison_reason)

gather(poison_reason) %>% ggplot(aes(value)) + facet_wrap("key", scales = "free") + geom_bar() + theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 8))


mca <- MCA(poison_reason, graph = FALSE)

summary(mca)

plot(mca, invisible=c("ind"), habillage = "quali")


write.csv(poison_reason, file = "poison_reason.csv")



