# Exemplo pratico: Avaliando o impacto de uma nova ferramenta de marketing
# Gerando dados simulados para vendas antes e depois da implementacao

vendas_antes <- c(100,102,98,97,105,103,100,95,102,98)
vendas_depois <- c(110,108,115,120,130,125,130,112,120,125)

#duas amostras independentes
#Hipoteses
#H0 As medias sao iguais
#H1 A media das vendas depois é maior que a média das vendas antes
test_t <- t.test(vendas_antes, vendas_depois, alternative = "less")
print(test_t)

#Teste de Wilcoxon
#Mesmas hipoteses mas sem supor normalidades
teste_wilcoxon <- wilcox.test(vendas_antes, vendas_depois, alternative = "less")
print(teste_wilcoxon)

###Teste Pareado, analisa antes e depois
#H0 As medias sao iguais
#H1 A media das vendas depois é maior que a média das vendas antes
test_t <- t.test(vendas_antes, vendas_depois, alternative = "less", paired = TRUE)
print(test_t)

#Teste de Wilcoxon
#Mesmas hipoteses mas sem supor normalidades
teste_wilcoxon <- wilcox.test(vendas_antes, vendas_depois, alternative = "less", paired = TRUE)
print(teste_wilcoxon)
