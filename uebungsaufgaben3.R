
library(data.table)
library(readxl, writexl)

bsp = fread("beispiel.csv")
bsp$mwst = '19%'

write.csv(bsp, file="bestellungen_output.csv", row.names = FALSE)
bestellungen = fread("bestellungen_output.csv")


umsatz2019 = read_excel("umsatz.xlsx", sheet = "2019")
umsatz2019$Produktpreis = umsatz2019$Umsatz / umsatz2019$Bestellungen
writexl::write_xlsx(umsatz2019, "umsatz_2019_output.xlsx")
