##### QUAL O SEU TIPO DE DADO? #####

# Para a aula utilizaremos a PNAD 2015 - Já tratada
#Sexo -> 0 Masculino; 1 Feminino
#Cor -> 0 Indígnena; 2 Branca; 4 Preta; 6 Amarelo; 8 Parda; 9 Sem declaração

sessionInfo()

getwd
setwd("C:\\Users\\paulo\\Documents\\GitHub\\Alura\\Estatistica_com_r\\dados")

#install.packages("tidyverse")
#install.packages("glue")
library(tidyverse)
library(glue)

options(spicen = 999)

dados <- read.csv("dados.csv")

head(dados,10)

#Variáveis qualitativas ordinais: Variáveis que qualitativas 
##que podem ser hierarquizadas, ex: hierarquias, anos de estudo

unique(select(dados, Anos.de.Estudo)) #Retorna os valores com a primeira linha 
#em que o dado foi encontrado

c(arrange(unique(select(dados, Anos.de.Estudo)), Anos.de.Estudo)) #Ordena a tabela
#de acordo com uma variável e a transforma em um vetor

#Variáveis qualitativas nominais: Variáveis que qualitativas 
##que não podem ser hierarquizadas, ex: cor, sexo

c(arrange(unique(select(dados, UF)), UF))
c(arrange(unique(select(dados, Sexo)), Sexo))
c(arrange(unique(select(dados, Cor)), Cor))

#Variável quantitativa discreta: Variável que representa uma contagem onde os 
#valores possíveis formam um conjunto finito ou enumerável, ex: idade

sprintf('De %s até %s anos', min(dados$Idade), max(dados$Idade)) #Essa função 
#retorna uma string (texto) com dois parâmetros (%s) determinados em sequência
#(Min() e Max() de acordo com o exemplo) 

#Podemos fazer o mesmo com a função glue do pacote glue
glue::glue('De {min(dados$Idade)} até {max(dados$Idade)} anos')

#Variável quantitativa ordinária: Variável que representa uma contagem onde os 
#valores possíveis formam uma escla contínua, ex: altura

glue::glue('De {min(dados$Altura)} até {max(dados$Altura)} metros')



##### DISTRIBUIÇÃO DE FREQUÊNCIAS #####
