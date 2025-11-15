
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
