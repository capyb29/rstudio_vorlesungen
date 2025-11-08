tag <- c("Mo","Di","Mi","Do","Fr")
wert <- c(320,325,330,310,320)
order <- c(FALSE,TRUE,FALSE,FALSE,TRUE)

df <- data.frame(s1=1:10,s2=letters[1:10])
df.numberOfCollumns <- ncol(df)
df.numberOfRows <- nrow(df)
df.nameOfCollumns <- colnames(df)
df.nameOfRows <- rownames(df)
df.dimensions <- dim(df)

df$s3 = rep(NA,nrow(df))
df$s4 = df$s1 * 100
df$s5 = df$s4 *2
df$s6 = df$s1 / 100

dfneu = data.frame (s1=100,s2 = "z", s3=NA,s4=500,s5=3000,s6=1)
df = rbind(df,dfneu)

quartil = c(P1=1,P2=3,P3=4,P4=6,P5=8,P6=10,P7=12,P8=13,P9=15,P10=19,P11=30)
quartil.mittelwert = mean(quartil)
quartil.median = median(quartil)
quartil.varianz = var(quartil)
quartil.standardabweichung = sd(quartil)
quartil.spannweite = max(quartil) - min(quartil)