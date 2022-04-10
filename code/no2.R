#jumlah pasien = n = 20
#peluang sembuh = p = 0.2

#a.Peluang terdapat 4 pasien yang sembuh.
a <- dbinom(x=4,20,0.2)
a
#output = 0.2181994

#b. Gambarkan grafik histogram berdasarkan kasus tersebut.
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

#c. Nilai Rataan (??) dan Varian (??²) dari Distribusi Binomial.

n=20 #jumlah pasien
p=0.2 #peluang
q=1-p #peluang failure nya

#mean theorytical
me=n*p
me

#mean sample
mean(data)

#variance theorytical
va=n*p*q
va

#variance sample
var(data)