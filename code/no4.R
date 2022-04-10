#a.Fungsi Probabilitas dari Distribusi Chi-Square.
x = 2
df = 10
dchisq(x , df)
#b.Histogram dari Distribusi Chi-Square dengan 100 data random.
p <- rchisq(100,df)
hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chisquare")
#c.Nilai Rataan (??) dan Varian (??²) dari Distribusi Chi-Square.
#mean
mean1 = df
mean1
#variance
var1 = 2*df
var1

