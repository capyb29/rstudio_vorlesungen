# Aufgabe 1
bev = read.csv("bev.csv", sep=";")
bev = bev[,c("Kreis","X31.12.2019")]
colnames(bev)[colnames(bev)=="X31.12.2019"] <- "Stichtag 31.12.2019"

bev_na = any(is.na(bev))
#print(bev_na)
höchsten5 = bev[order(bev$`Stichtag 31.12.2019`,decreasing = TRUE),][1:5,]
bewohner_top5 = höchsten5$`Stichtag 31.12.2019`
names(bewohner_top5) = höchsten5$Kreis
bewohner_insgesamt = sum(bewohner_top5)
dif_ham_ber = bewohner_top5["Berlin"] - bewohner_top5["Hamburg"]
dif_min_max = bewohner_top5[1] - bewohner_top5[5]
anteil_bewohner_top5 = bewohner_top5 / bewohner_insgesamt * 100

#Aufgabe 2
aktien_matrix <- matrix(,nrow=2,ncol=5)
print(dim(aktien_matrix))
rownames(aktien_matrix) <- c("Aktie A","Aktie B")
colnames(aktien_matrix) <- c("MO","DI","MI","DO","FR")
aktien_matrix["Aktie A",] <- c(120,123,128,129,131)
aktien_matrix["Aktie B",] <- c(56,49,45,81,97)
aktien_matrix_dif <- aktien_matrix
aktien_matrix_dif["Aktie A",] <- c(0,diff(aktien_matrix["Aktie A",]))
aktien_matrix_dif["Aktie B",] <- c(0,diff(aktien_matrix["Aktie B",]))
aktien_matrix <- cbind(aktien_matrix, Durchschnitt = rowMeans(aktien_matrix_dif))
Kaufempfehlung <- c(0,1)
aktien_matrix <- cbind(aktien_matrix, Kaufempfehlung)

#Aufgabe 3 
umsatz_df <- data.frame(
  Region = c("A", "B", "C", "D", "E"),
  Umsatz = c(12, 20, 7, 14,19)
)
N = nrow(umsatz_df)
Gesamtumsatz = sum(umsatz_df$Umsatz)
umsatz_df <- umsatz_df[order(umsatz_df$Umsatz),]
Umsatzanteil = umsatz_df$Umsatz / Gesamtumsatz
umsatz_df <- cbind(umsatz_df, Umsatzanteil)
kumulierter_anteil = cumsum(Umsatzanteil)
umsatz_df <- cbind(umsatz_df, kumulierter_anteil)
V = sum(umsatz_df$kumulierter_anteil) - 0.5
gini_koeffizient = 1 - (2*V)/N
print(ineq::Gini(umsatz_df$Umsatz))

#Aufgabe 4
maschinen_df <- data.frame(
  Monat = c("Januar","Februar","März","April","Mai","Juni"),
  Maschine1 = c(620,680,620,580,560,600),
  Maschine2 = c(590,590,600,570,580,610)
)

arithmetisches_mittel1 = mean(maschinen_df$Maschine1)
arithmetisches_mittel2 = mean(maschinen_df$Maschine2)
spannweite1 = max(maschinen_df$Maschine1) - min(maschinen_df$Maschine1)
spannweite2 = max(maschinen_df$Maschine2) - min(maschinen_df$Maschine2)
varianz1stichprobe = var(maschinen_df$Maschine1)
varianz1gesamt = varianz1stichprobe * (nrow(maschinen_df)-1) / nrow(maschinen_df)
varianz2stichprobe = var(maschinen_df$Maschine2)
varianz2gesamt = varianz2stichprobe * (nrow(maschinen_df)-1) / nrow(maschinen_df)
standardabweichung1stichprobe = sd(maschinen_df$Maschine1)
standardabweichung1gesamt = standardabweichung1stichprobe * sqrt((nrow(maschinen_df)-1) / nrow(maschinen_df))
standardabweichung2stichprobe = sd(maschinen_df$Maschine2)
standardabweichung2gesamt = standardabweichung2stichprobe * sqrt((nrow(maschinen_df)-1) / nrow(maschinen_df))

analyse_df <- data.frame(
  Kennzahl = c("Maschine 1","Maschine 2"),
  #Arithmetische_Mittel = c(arithmetisches_mittel1, arithmetisches_mittel2),
  Spannweite = c(spannweite1, spannweite2),
  Varianz_Stichprobe = c(varianz1stichprobe, varianz2stichprobe),
  Standardabweichung_Stichprobe = c(standardabweichung1stichprobe, standardabweichung2stichprobe),
)
