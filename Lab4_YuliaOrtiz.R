# Nombre: Yulia Abigail Ortiz Cuevas
# 1967561
# Fecha: 11.03.2021
# Laboratorio 4



# Importar datos ----------------------------------------------------------

c1.url <- paste0("https://raw.githubusercontent.com/YuliaAbigail18/PrincipiosDeEstad-stica2021/main/Cuadro1.csv")

inventario <- read.csv(c1.url)
head(inventario)
tail(inventario)


# Funciones para revisar el conjunto de datos -----------------------------

str(inventario)
dim(inventario)
names(inventario)
colnames(inventario)
names(inventario[ , 4:7])
summary(inventario)

is.factor(inventario$Especie)
inventario$Especie <- factor(inventario$Especie)
is.factor(inventario$Especie)

summary(inventario)


is.factor(inventario$Posicion)
inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)
summary(inventario)

# Tablas de frecuencia ----------------------------------------------------

# Frecuencia absoluta
freq.pos <- table(inventario$Posicion)
freq.pos

# Frecuencia relativa 
prop.pos <- freq.pos / sum(freq.pos)
prop.pos

# Frecuencia en porcentaje
prop.porce <- prop.pos * 100
prop.porce
sum(prop.porce)
sum(freq.pos)


# Representación gráfica --------------------------------------------------

barplot(freq.pos, col = "#FF99CC", border = NA, las = 1, ylim = c(0,20), 
        cex.names = 0.7)

pie(freq.pos, labels = paste(levels(inventario$Posicion), round(prop.porce,2),"%"),
    col = c("#0000FF", "#FF6600", "#66FF33", "#FFFF66"))



# Representación gráfica de variables cuantitativas -----------------------

hist(inventario$Diametro, ylim = c(0,20))

his.diam <- hist(inventario$Diametro)
his.diam

hist(inventario$Diametro, 
     breaks = c(5, 10, 15, 20, 25),
     col = "#e68099")
his_3 <- hist(inventario$Diametro,
              breaks = c(5, 10, 15, 20, 25),
              col = "#ff9994")
