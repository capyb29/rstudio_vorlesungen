library(dplyr)

# Aufgabe 1
klausurergebnis = data.frame(
  Stunden = c(50, 55, 45, 30, 25, 30, 15, 35),
  Note = c(0.7, 1.3, 2, 3, 4, 3, 5, 3.7)
)

note_stunden_korr = cor(klausurergebnis$Stunden, klausurergebnis$Note)
# stark negative Korrelation | je höher die Stunden, desto besser die Note

# Aufgabe 2
umsatz_vertieb = read.csv2("umsatz_vertrieb.csv")
umsatz_vetriebskosten_korr = cor(umsatz_vertieb$Vertriebskosten, umsatz_vertieb$Umsatz)

mx = mean(umsatz_vertieb$Vertriebskosten)
my = mean(umsatz_vertieb$Umsatz)
r = (sum((umsatz_vertieb$Vertriebskosten - mx)*(umsatz_vertieb$Umsatz - my))) / 
    sqrt(sum((umsatz_vertieb$Vertriebskosten - mx)^2) * sum((umsatz_vertieb$Umsatz - my)^2))

# manuelle formel und funktion gleiches ergebnis

# Aufgabe 3
umsatz_werbung = read.csv2("umsatz_werbung.csv")
umsatz_werbung_korr = cor(umsatz_werbung$Werbeausgaben, umsatz_werbung$Jahresumsatz, method = "pearson")

umsatz_werbung_hilfe = mutate(umsatz_werbung,
                              Werbeausgaben = Werbeausgaben,
                              Jahresumsatz = Jahresumsatz,
                              xi2 = Werbeausgaben^2,
                              xy = Werbeausgaben * Jahresumsatz
                              )

regression = lm(Jahresumsatz ~ Werbeausgaben, data = umsatz_werbung)
prediction = predict(regression, data.frame(Werbeausgaben = c(0.4, 7, 22, 23, 24)))

# Aufgabe 4
spedition = read.csv2("spedition.csv")
spedition_korr = cor(spedition$Alter, spedition$Reparaturkosten)
# stark positive Korrelation | je älter das Fahrzeug, desto höher die Reparaturkosten

lm_reparatur = lm(Reparaturkosten ~ Alter, data = spedition)
koeffizienten = coefficients(lm_reparatur)
formel = koeffizienten[1] + koeffizienten[2] * spedition$Alter

predict_neuer_laster = predict(lm_reparatur, data.frame(Alter = 8))
