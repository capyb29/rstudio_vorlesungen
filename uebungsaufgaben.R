<<<<<<< HEAD
Absatzmenge <- c(10, 12, 8, 9, 11, 19, 9)
Verkaufstage <- c("Mo","Di","Mi","Do","Fr","Sa","So")
names(Absatzmenge) <- Verkaufstage

# Übungsaufgabe 2
repitition <- rep(1:5)
sequiti <- seq(1:5)

# Übungsaufgabe 3
m_v1 <- as.numeric(rep(1:5))
m_v2 <- as.numeric(rep(6:10))

joined_m_v1_v2 <- append(m_v1, m_v2)

DS.MATRIX <- matrix(joined_m_v1_v2, nrow = 2, ncol = 5, byrow = TRUE)
# Aufgabe 4
# lieber rsum benutzen, aber waren zu schnell
summe <- c(sum(DS.MATRIX[1,]),sum(DS.MATRIX[2,]))
DS.MATRIX2 <- matrix(summe)
DS.MATRIX3 <- cbind(DS.MATRIX,DS.MATRIX2)

spalten <- c("S1", "S2", "S3", "S4", "S5", "S6")
zeilen <- c("Z1", "Z2")

colnames(DS.MATRIX3) <- spalten
rownames(DS.MATRIX3) <- zeilen
=======
Absatzmenge <- c(10, 12, 8, 9, 11, 19, 9)
Verkaufstage <- c("Mo","Di","Mi","Do","Fr","Sa","So")
names(Absatzmenge) <- Verkaufstage

# Übungsaufgabe 2
repitition <- rep(1:5)
sequiti <- seq(1:5)

# Übungsaufgabe 3
m_v1 <- as.numeric(rep(1:5))
m_v2 <- as.numeric(rep(6:10))

joined_m_v1_v2 <- append(m_v1, m_v2)

DS.MATRIX <- matrix(joined_m_v1_v2, nrow = 2, ncol = 5, byrow = TRUE)
# Aufgabe 4
# lieber rowsum benutzen, aber wir waren zu schnell 
summe <- c(sum(DS.MATRIX[1,]),sum(DS.MATRIX[2,]))
DS.MATRIX2 <- matrix(summe)
DS.MATRIX3 <- cbind(DS.MATRIX,DS.MATRIX2)

spalten <- c("S1", "S2", "S3", "S4", "S5", "S6")
zeilen <- c("Z1", "Z2")

colnames(DS.MATRIX3) <- spalten
rownames(DS.MATRIX3) <- zeilen
>>>>>>> 3d5c691 (fuck git)
