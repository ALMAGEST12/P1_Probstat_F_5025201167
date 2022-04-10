# P1_Probstat_F_5025201167

# 1.Distribusi Geomatrik

## a) Mencari peluang distribusi geometrik dimana x = 3, p = 0.2 dengan menggunakan dgeom
```
p = 0.20
n = 3
dgeom(x = n, prob = p)
```
output : 0.1024

## b) Mencari mean dengan data random yang berjumlah 10000, dimana hasil dari distrubusi geometriknya 3
Menggunakan `rgeom` karena menggunakan data random
```
mean(rgeom(n = 10000, prob = p) == 3)
```
output : tergantung hasil data yang diacak

## c) andingkan hasil a dan b
Didapatkan nilai exact nya 0.1024 dari a, didapatkan nilai dari simulasi ketika diambil dengan 10000 data random pada kasus yang serupa dari b dan ternyata hasil nya mendekati nilai exact nya

## d) Membuat histogram distribusi geometrik
![Histogram Distribusi Geometrik](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/1.png?raw=true)

## e) Rataan dapat dicari dengan `μ = 1/p` dan varian `σ² = 1-p/p^2` 


# 2.Distribusi Binominal

## a) Mencari peluang distribusi binominal dimana n = 4, size = 20, p = 0.2 menggunakan `dbinom`
```
a <- dbinom(x=4,20,0.2)
a
```
output : 0.2181994

## b) Membuat histogram distribusi binominal
```data <- rbinom(20,20,0.2)```

![Histogram Distribusi Binominal](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/2.png?raw=true)

## c) Rataan dapat dicari dengan `μ = n*p` dan varian `σ² = npq` 

# 3.Distribusi Poisson

## a) Mencari peluang distribusi poisson dimana x = 6, lamba = 4.5 menggunakan `dpois`
```
x = 6
lambda = 4.5
dpois(x,lambda)
```
output : 0.12812

## b) Membuat histogram distribusi poisson

![Histogram Distribusi Poisson](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/3.png?raw=true)

## c) Bandingkan a dan b
Hasil simulasinya adalah 11.5%, sedangkan nilai exactnya adalah 12,8%, kesimpulannya adalah sesuai karena nilai simulasi mendekati exact

## d) Nilai rataan dapat dicari dengan `μ = λ` dan varian `σ² = λ` 

# 4. Distribusi Chi-Square

## a) Mencari peluang distribusi chi-square dimana x = 2, df = 10  menggunakan `dchisq`
```
x = 2
df = 10
dchisq(x , df)
```
output : 0.007664155

## b) Membuat histogram distribusi chi-square
```
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chisquare")
```

![Histogram Distribusi Chi_Square](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/4.png?raw=true)

## c) Rataan dapat dicari dengan `μ = df` dan varian `σ² = 2*df`

# 5. Distribusi Eksponensial

## a) Mencari peluang distribusi eksponensial dimana n = 10, rate = 3 menggunakan `rexp`
```
lambda = 3
rexp(10,rate = lambda)
```
output : data yang berjumlah 10

## b) Membuat histogram distribusi eksponensial dimana n = 10, 100, 1000, 10000
```
set.seed(1)
x1 <- rexp(n, rate = lambda)
```
![Histogram Distribusi Eksponensial n = 10](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/5%20n=10.png?raw=true)

![Histogram Distribusi Eksponensial n = 100](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/5%20n=100.png?raw=true)

![Histogram Distribusi Eksponensial n = 1000](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/5%20n=1000.png?raw=true)

![Histogram Distribusi Eksponensial n = 10000](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/5%20n=10000.png?raw=true)

## c) Rataan dapat dicari dengan `data <- rexp(n, rate = lamda)` `μ = mean(data)` dan varian mengunakan `σ² = var(data)`


# 6. Distribusi Normal

## a) Mencari peluang distribusi normal dengan data acak dengan syarat P(X1 ≤ x ≤ X2) menggunakan `rnorm`
```
data <- rnorm(n,m,std)
rata_rata <- mean(data)
```
Untuk mendapatkan x1 dan x2 menggunakan `floor` dan `ceiling`
```
x1 <- floor(rata_rata)
x2 <- ceiling(rata_rata)
```
Setelah itu hitung z_scorenya 
```
z_score <- (data - mean(data)/ sd(data))
```
Setelah itu digambarkan dengan grafik menggunakan `plot()`
```
plot(z_scores, type = "o", col="blue")
```
![Grafik Plot](https://user-images.githubusercontent.com/90760961/162613898-6ced1286-b265-4ba3-9cb6-c03613bdc5c1.png)

## b) Membuat histogram distribusi chi-square
```
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201167_William Zefanya Maranatha_Probstat_F_DNhistogram")
 ```

![Histogram Distribusi Normal](https://github.com/ALMAGEST12/P1_Probstat_F_5025201167/blob/main/SS/6.png?raw=true)

## c) Nilai varian dapat dicari dengan `σ² = var(x)`
