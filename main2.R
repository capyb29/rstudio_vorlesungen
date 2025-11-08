# Dataframe daten csv
<<<<<<< HEAD
bev = read.csv("bev.csv", sep=";")
bev = bev[,-2]
=======
bev <- read.csv("bev.csv", sep=";")
bev = bev[,-2:-5]
colnames(bev)[colnames(bev)=="X31.12.2019"] <- "Stichtag 31.12.2019"
bev_na = is.na(bev)
>>>>>>> 4ad8767 (anfang übungsaufgaben3)
