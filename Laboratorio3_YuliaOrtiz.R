# Yulia Abigail Ortiz Cuevas
# 1967561
# 03.03.2021


# Parte 1: Importar datos -------------------------------------------------

conjunto <- read.csv("cuadro1.csv", header = TRUE)
head(conjunto)
tail(conjunto)

# Datos en consola --------------------------------------------------------

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)
sum(dbh)
prod(dbh)
hist(dbh)

# Datos de URL  -----------------------------------------------------------

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)
head(profepa)
profepa

sum(profepa$Inspecciones)
sum(profepa$Operativos)
sum(profepa$Recorridos.de.vigilancia)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2)
head(profepa2)

# Importar datos de url seguros -------------------------------------------

library(repmis)
conjunto.2 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto.2)
sum(conjunto.2$Vecinos)

library(readr)  
file <- paste0("https://raw.githubusercontent.com/YuliaAbigail18/PrincipiosDeEstad-stica2021/main/Cuadro1.csv")
inventario <- read.csv(file)
head(inventario)

# Parte 2: Operaciones con la base de datos -------------------------------

mean(conjunto$Altura)
mean(conjunto$Arbol)
mean(conjunto$Vecinos)
mean(conjunto$Diametro)
sum(conjunto$Altura < 10)
which(conjunto$Altura < 10)

conjunto.13 <- conjunto[!(conjunto$parcela =="2"),]
conjunto.13

# Parte 3 Representación gráfica ------------------------------------------

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
head(mamiferos)
hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep, 
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas sueño de las 39 especies", 
     xlab = "Horas sueño", 
     ylab = "Frecuencia", 
     las = 1, 
     col = "#996600")

# Barplot o gráfico de barras ---------------------------------------------

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

feeds <- table(chickwts$feed)
feeds
barplot(feeds)

barplot(feeds[order(feeds, decreasing = TRUE)])
