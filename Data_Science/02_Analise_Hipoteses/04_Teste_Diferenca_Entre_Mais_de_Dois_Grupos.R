## Mais de 2 grupos/amostras
#Exemplo: Avaliando a eficacia de diferentes tipos de fertilizantes na produtividade
#das plantas 
#Gerando dados simulados para tres grupos com tratamentos diferentes

library(tibble)

#criando dados
grupo1 <- c(45,55,50,52,40,48,53,42,51,49)
grupo2 <- c(54,60,58,55,62,56,57,59,63,61)
grupo3 <- c(65,66,68,70,67,69,72,64,71,73)

#preparando dados para ANOVA
dados <- tibble(
  valores = c(grupo1, grupo2, grupo3),
  grupo = factor(rep(c("Grupo1", "Grupo2", "Grupo3"), each = 10))
)

#Teste de normalidade para verificar se as amostras seguem uma distribuicao normal
shapiro.test(c(grupo1, grupo2, grupo3)) #Shapiro Wilk
#Como nao rejeitou HO (maior que 0,05), entao é normal

#Realizando a ANOVA
resultado_anova <- aov(valores ~ grupo, data = dados)
summary(resultado_anova)
#Diferenca significativa

### Teste Kruskal Wallis para comparar as medianas dos tres grupos quando a normalidade é questionada
kruskal_teste <- kruskal.test(list(grupo1, grupo2, grupo3))
print(kruskal_teste)
#Tem diferenca

#Teste Dunn para analises pos-hoc apos rejeicao da hipotese nula pelo kurskal wallis
install.packages("dunn.test")
library(dunn.test)
? dunn.test()
dunn.test(x = list(grupo1, grupo2, grupo3))
#valores pequenos de alpha indicam diferencas, valores maiores indicam igualdade