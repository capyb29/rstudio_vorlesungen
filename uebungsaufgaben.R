absatzmenge <- c(10, 12, 8, 9, 11, 19, 9)
verkaufstage <- c("Mo","Di","Mi","Do","Fr","Sa","So")
names(absatzmenge) <- verkaufstage

repiti <- rep(1:5)
sequi <- seq(1:5) 

mat <- as.numeric(rep(1:5))
mat2 <- as.numeric(rep(6:10))

joined <- append(mat,mat2)
DS.MATRIX <- matrix(joined,nrow = 2,ncol = 5, byrow = TRUE)

zeilensumme <- c(sum(DS.MATRIX[1,]),sum(DS.MATRIX[2,]))

DS.MATRIX2 <- matrix(zeilensumme)
DS.MATRIX3 <- cbind(DS.MATRIX,DS.MATRIX2)
