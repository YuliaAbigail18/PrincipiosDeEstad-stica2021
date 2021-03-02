# Laboratorio 3 
# Nombre: Yulia Abigail Ortiz Cuevas
# Matricula: 1967561
# Fecha: 02.03.2021

# Parte 1 -----------------------------------------------------------------


dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2)
head(profepa2)

conjunto <- read.csv("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)


file <- paste0("https://github.com/YuliaAbigail18/PrincipiosDeEstad-stica2021/blob/main/Cuadro1.csv")
inventario <- read.csv(file)
head(inventario)


# Parte 2 -----------------------------------------------------------------



mean(dbh)

sd(dbh)

sum(dbh < 10)

which(dbh < 10)

trees.13 <- trees[!(trees$parcela=="2"),]
trees.13

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

mean(dbh)  

mean(trees. 1)




# Parte 3 -----------------------------------------------------------------

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
head(mamiferos)
hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas sueño de las 39 especies",
     xlab = "Horas de sueño",
     ylab = "Frecuencia")

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

feeds <- table(chickwts$feed)
feeds

barplot(feeds)

barplot(feeds[order(feeds, decreasing = TRUE)])

barplot(feeds[order(feeds, decreasing = TRUE)], col = "red", horiz = 1)
