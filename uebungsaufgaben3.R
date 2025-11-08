
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


# Aufgabe 3

rpos = read_excel("RPOS2017.xlsx", sheet = "2017")
rpos17 = filter(rpos, Jahr == 2017)
