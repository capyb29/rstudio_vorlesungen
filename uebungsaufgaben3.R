
library(data.table)
library(readxl, writexl)
library(dplyr)

bsp = fread("beispiel.csv")
bsp$mwst = '19%'

write.csv(bsp, file="bestellungen_output.csv", row.names = FALSE)
bestellungen = fread("bestellungen_output.csv")


umsatz2019 = read_excel("umsatz.xlsx", sheet = "2019")
umsatz2019$Produktpreis = umsatz2019$Umsatz / umsatz2019$Bestellungen
writexl::write_xlsx(umsatz2019, "umsatz_2019_output.xlsx")


# Aufgabe 2

vektor = c(1:5)
matrix1 = matrix(c(1:10), nrow=5, ncol=2)
df = data.frame(spalte.1 = 10, spalte.2 = letters[1:10])


list = list(Vektor = vektor, Matrix = matrix1, DataFrame = df)


# Aufgabe 3 & 4

rpos = read_excel("RPOS2017.xlsx", sheet = "2017")
rpos2017 = filter(rpos, Jahr == 2017)

# Aufgabe 5
rpos2017.erweitert = mutate(
  rpos2017,
  Kosten=Menge*EK,
  Umsatz=Menge*VK,
  Preisspanne=VK-EK,
  Rabatt=(LPreis-VK)*Menge,
  Deckungsbeitrag=(VK-EK)*Menge,
  Poentieller_Umsatz=LPreis*Menge
)
# Aufgabe 6
unterschiedliche_merkmale.beleg = n_distinct(
  rpos2017.erweitert,
  rpos2017.erweitert$Beleg
)
unterschiedliche_merkmale.artikel = n_distinct(
  rpos2017.erweitert,
  rpos2017.erweitert$ArtikelBez
)
unterschiedliche_merkmale.artikel = n_distinct(
  rpos2017.erweitert,
  rpos2017.erweitert$Ort
)

#Aufgabe 7
df_db_positiv = rpos2017.erweitert[rpos2017.erweitert$Deckungsbeitrag >= 0, ]
quantile = quantile(df_db_positiv$Deckungsbeitrag, c(0.1, 0.25, 0.5, 0.75, 0.9))
first_rpos2017 = rpos2017.erweitert[rpos2017.erweitert$Deckungsbeitrag == max(rpos2017.erweitert$Deckungsbeitrag),]

# Side Quest Formattable
total_summary_df = data.frame(Kennzahl = names(total_summary),
                              Wert = currency(total_summary, "€"), 
                              row.names = NULL)

#korr analyse
analyse_korr = read.csv2("umsatz_vertrieb.csv")
cor(analyse_korr$Umsatz, analyse_korr$Vertriebskosten)

