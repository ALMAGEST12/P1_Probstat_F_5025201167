#a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
x = 6
lambda = 4.5
dpois(x,lambda)

#b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)

set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Number of babies born per period',
       y = 'Proportion',
       title = '365 simulated births in a hospital with Pois(lambda = 4.5)') +
  theme_bw()

#c.dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#hasil simulasinya adalah 11.5%, sedangkan nilai exactnya adalah 12,8%, kesimpulannya adalah sesuai karena nilai simulasi mendekati exact

#d.Nilai Rataan (??) dan Varian (??²) dari Distribusi Poisson.
#mean
lambda

#variance
lambda

