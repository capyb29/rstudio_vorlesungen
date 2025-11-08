# Dataframe daten csv
bev = read.csv("bev.csv", sep=";")
bev = bev[,-2:-5]
colnames(bev)[colnames(bev)=="X31.12.2019"] <- "Stichtag 31.12.2019"

any(is.na(bev))
