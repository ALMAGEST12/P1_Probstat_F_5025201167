#a.Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
n = 100
m = 50
std = 8

#data <- c(1,2,4,2,6,3,10,11,5,3,6,85)
data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="red")

#b.Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201167_William Zefanya Maranatha_Probstat_F_DNhistogram")

#c.Nilai Varian (??²) dari hasil generate random nilai Distribusi Normal.
var(x)