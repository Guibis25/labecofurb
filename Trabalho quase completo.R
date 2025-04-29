# API (PORTA/FORMA DE ACESSO REMOTO)
# ACESSAMOS OS DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (WDI)
# INDICADORES DE DESENVOLVIMENTO MUNDIAL

# PIB (PRODUTO INTERNO BRUTO)

library(WDI) # CARREGAR BIBLIOTECA/PACOTE

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')

paises <- c('BR', 'US')

dadospibbrus <- WDI(country = paises,
                    indicator = 'NY.GDP.MKTP.CD')

# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')

#GRPAFICOS
# BIBLIOTECA ggplot2 (tidyverse)
# install.packages('tidyverse')
library(tidyverse)

## DADOS EMM PAINEL

grafpainel <- ggplot(dadospib, 
                     mapping = aes(y= NY.GDP.MKTP.CD, x = year)) +
  geom_point()

print(grafpainel)

# CORTE TRANSVERAL

grafcorte <- ggplot(dadospib2023,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                  x = year)) +
  geom_point()

print(grafcorte)

# SÉRIE TEMPORAL

grafserie <- ggplot(dadospibbr,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                  x = year)) +
  geom_line()

print(grafserie)

# aula 7

# AULA 7
# CÓDIGO ELABORADO PELO CHATGPT
# PROMPT ESTÁ NO FINAL DESTE ARQUIVO

library(WDI)
library(ggplot2)   
library(dplyr)

# Dados
dadospib <- WDI(country = 'all', indicator = 'NY.GDP.MKTP.CD')

# Gráfico
grafpainel <- ggplot(data = dadospib, 
                     mapping = aes(x = year, y = NY.GDP.MKTP.CD)) +
  # Todos os países com pontos em cinza claro
  geom_point(alpha = 0.4, color = "gray70") +
  # Brasil em destaque (vermelho)
  geom_point(data = filter(dadospib, country == "Brazil"),
             color = "red", size = 2) +
  # Título e rótulos dos eixos
  labs(title = "PIB ao Longo do Tempo",
       x = "Ano",
       y = "PIB (US$ corrente)") +
  # Tema mais moderno
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )

grafpainel

###### PROMPT DO CHATGPT
### NÃO EXECUTE NO R

Considere estes dados, coletados com a biblioteca WDI:
  
  # DADOS EM PAINEL
  dadospib <- WDI(country = 'all',
                  indicator = 'NY.GDP.MKTP.CD')

Este é o gráfico atual:
  
  grafpainel <- ggplot(data = dadospib,
                       mapping = aes(y = NY.GDP.MKTP.CD,
                                     x = year)) +
  geom_point()