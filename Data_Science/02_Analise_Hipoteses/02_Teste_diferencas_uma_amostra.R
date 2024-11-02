## Test - T
? t.test()

#teste faixa salarial recem promovidos = 100%
x <- c(0.9, 1.2, 1.3, 0.95, 1, 1.1)
t.test(x, mu = 1, alternative = c("greater"))
#nesse teste mu se refere a media

## Wilcoxon
? wilcox.test()
wilcox.test(x, mu = 1, alternative = c("greater"))

#nesse teste mu se refere a mediana