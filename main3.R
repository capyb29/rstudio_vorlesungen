
# Aufgabe 1
klausurergebnis = data.frame(
  Stunden = c(50, 55, 45, 30, 25, 30, 15, 35),
  Note = c(0.7, 1.3, 2, 3, 4, 3, 5, 3.7)
)

cor = cor(klausurergebnis$Stunden, klausurergebnis$Note)
# stark negative Korrelation | je höher die Stunden, desto besser die Note