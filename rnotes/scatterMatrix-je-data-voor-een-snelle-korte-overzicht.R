# oso 20190805  
#snelle korte rapportage van de kolommen in een scattermatrix
#snel verbanden zien tussen kolommen
#scatterMatrix verwacht nummers en factors

listOfPackages <- c("userfriendlyscience","dplyr","datasets")
for (i in listOfPackages){ if(!(i %in% installed.packages()) ) { install.packages(i, dependencies = TRUE) } require(i) }

library(userfriendlyscience)
library(dplyr)
library(datasets)

#
#tabel eerst in r lezen daarna eerste paar regels tonen
data(mtcars)
head(mtcars)
class(mtcars)

#
#samenvatting en gegevensleverings analyse in plots/output
# let op grote bestanden duren lang
mtcars %>% select(everything()) %>% 
  mutate_if(is.character, as.factor) %>% 
  mutate_if(is.integer, as.numeric) %>% scatterMatrix()

