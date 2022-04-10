#a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
p = 0.20
n = 3
dgeom(x = n, prob = p)

#b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
mean(rgeom(n = 10000, prob = p) == 3)

#c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
#didapatkan nilai exact nya 0.1024 dari a, didapatkan nilai dari simulasi ketika diambil dengan 10000 data random pada kasus yang serupa dari b dan ternyata hasil nya mendekati nilai exact nya


#d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")


#e.Nilai Rataan (??) dan Varian (??²) dari Distribusi Geometrik.
p=0.2

#mean
mean1 = 1 / p
mean1

#variance
var1 = (1 - p) / p^2
var1


