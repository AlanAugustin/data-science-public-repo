## Teste Qui-Quadrado
? prop.test()

heads <- rbinom(1, size = 100, prob = .5)
prop.test(heads, 100)

prop.test(20, 100) #20 colaboradores com turnover para total de 100

prop.test(20, 100, p=.25) #20 colaboradores com turnover para total de 100

#exemplo fumantes
# 4 grupos em pacientes temos o total de pessoas e em fumantes quantos desses fumam
## H0: The null hypothesis is that the four populations from which
##     the patients were drawn have the same true proportion of smokers.
## A:  The alternative is that this proportion is different in at
##     least one of the populations.
smokers <- c(83,90,129,70)
patients <- c(86,93,136,82)
prop.test(smokers, patients)

## Teste Fisher
Education_Product <- matrix(
  c(5,95,20,80,40,60,70,30),
  nrow = 4,
  byrow = TRUE,
  dimnames = list(
    education = c(
      "Fundamental", "Medio", "Graduacao", "Pos Graduacao"
      ),
    product_preference = c(
      "Produto A", "Produto B"
    )
    )
  )

fisher.test(Education_Product)
