## FLS6397 - Introdução à Programação e Ferramentas Computacionais para as Ciências Sociais ##

# Tutorial 01 - Básico da Linguagem e Data Frame

library(datasets)

# Criando banco de notícias de jornais online

jornal = c("The Guardian", "The Guardian", "The Guardian", "BBC", "BBC", "BBC")

datanot = c("02/10/2017", "01/10/2017", "02/10/2017", "02/10/2017", "02/10/2017", "01/10/2017")

titulo = c("Catalan referendum: preliminary results show 90% in favour of independence ", "Vio
           lence against Catalan voters: what we know so far", "Kim Jong-nam poisoning trial: 
           accused women plead not guilty", "Catalan referendum: Catalonia has 'won right to 
           statehood'", "Monarch flights cancelled as airline ceases trading", "Australian boy 
           fatally crushed by gym weights")

autor = c("Sam Jones, Stephen Burgen", "NA", "Oliver Holmes", "NA", "NA", "NA")

caracteres = c(8078, 2157, 5190, 4608, 2977, 897)

politica = c(1, 1, 0, 1, 0, 0)

esporte = c(0, 0, 0, 0, 0, 0)

video = c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE)

# Pareando e combinando os vetores que foram criados em um data frame

dados = data.frame(jornal, datanot, titulo, autor, caracteres, video, politica, esporte)

# Dados TSE Acre 2014 já importados

ls()

# Método alternativo para importar dados
votacao_candidato_munzona_2014_AC <- read.table("C:/Users/camila/Google Drive/USP/Cursos/Introdução à Programação e Ferramentas Computacionais para as Ciências Sociais/votacao_candidato_munzona_2014_AC.txt",
  sep = ";", fileEncoding="latin1")

dim(votacao_candidato_munzona_2014_AC)
head(votacao_candidato_munzona_2014_AC)
str(votacao_candidato_munzona_2014_AC)

names(votacao_candidato_munzona_2014_AC)

mean(votacao_candidato_munzona_2014_AC$V29)

# Fix the errors 01

## Q1)
head(mtcars)

## Q2)
str(mtcars)

## Q3)
dim(mtcars)

## Q4)
names(mtcars)

## Q5)
head(mtcars)

## Q6)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")

## Q7)
v2 <- c(1, 2, 3, 4)
v2 + 42

## Q8)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")
        
## Q9)
v3 <- c(33, 31, 40, 25, 27, 40)

## Q10)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")

## Q11)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")

## Q12)
v3 <- c(33, 31, 40, 25, 27, 40)

## Q13)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")
v3 <- c(33, 31, 40, 25)
myData <- data.frame(v1, v3)
        
## Q14)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")
v4 <- c(33, 31, 40, 25)
myData <- data.frame(v1, v4)
names(myData) <- c("animal", "idade")

## Q15)
ls()

## Q16)
v1 <- c("pato", "cachorro", "minhoca", "lagarto")
paste(v1, collapse = " ")

# Tutorial 02

v4 <- c(1, "4", 4, 1)
print(v4)
class(v4) #string

v6 <- c("Pedro", "Beatriz", TRUE)
print(v6)
class(v6) #string

v7 <- c(T, T, F, T, F, F, 42)
print(v7) #int?
class(v7) #numeric

temperatura_celsius <- c(-7, -10, 5, 12, 21)
temperatura_farenheit <- ((temperatura_celsius / 5) * 9) + 32
names(temperatura_celsius) #NULL
names(temperatura_celsius) <- c("dezembro", "janeiro", "fevereiro", "março", "abril")
names(temperatura_celsius) #Not null anymore

semana_1 <- c(32, 20, 15, 20, 18, 19, 40)
semana_2 <- c(32, 21, 12, 12, 24, 21, 50)
dias_da_semana <- c("Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado")
names(semana_1) <- dias_da_semana
names(semana_2) <- dias_da_semana
soma_semanas <- semana_1 + semana_2 #Literalmente soma
print(soma_semanas)
duas_semanas <- c(semana_1, semana_2) #Concatena
print(duas_semanas)

pal_rela <- c(5456, 3543, 1000, 4354, 3245, 1500)
cafe <- c(0.2, 2, 1, 5, 4, 2)
meses <- c("Setembro", "Outubro", "Novembro", "Dezembro", "Janeiro", "Fevereiro")
names(pal_rela) <- meses
names(cafe) <- meses
prod <- cafe/pal_rela
prod[3:4]
prod[5:6]

litros_cafe <- c(4.3, 3.1, 5.3, 5.5, 6.9, 8.3, 9.7, 9.9, 9.1, 7.0, 6.2, 5.6)
meses <- c("Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho",
           "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro")
names(litros_cafe) <- meses
selecao <- litros_cafe > 7
print(selecao)
litros_cafe[selecao]