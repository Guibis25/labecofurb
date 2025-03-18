# WDI - WORLD DEVELOPMENT INDICATORS
# OS DADOS DO BANCO MUNDIAL SÂO ACESSADOS

install.packages("WDI")
library(WDI) # SEMPRE CHAMA O PACOTE 

#PROCUREM AS VIGNETTES
#PÀGINAS COM INTRUÇÕES DOS PACOTES

# GDP (current US$)(NY.GDP.MKTP.CD)
# PIB, PREÇOS CORRENTES EM DÓLAR NORTE-AMERICANO
# CÒDIGO: NY.GDP.MKTP.CD

#VAMOS PESQUISAR O TERMO 'GDP' NO WDI

varpib <- WDIsearch('gdp') # CRIAR OBJETO COM O RES.

# buscar os dados com o código do site 

options(scipen = 999) # ajusta a not. cient.

dadospIB <- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD')

dadospIB2023 <- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD', start = 2023, end = 2023)

