#YULIA ABIGAIL ORTIZ CUEVAS 
#1967561
#27.04.2021
#ASIGNACIÓN 6


# Importar datos ----------------------------------------------------------

erupciones <- read.csv("https://raw.githubusercontent.com/YuliaAbigail18/PrincipiosDeEstad-stica2021/main/erupciones.csv")
head(erupciones)


# Diagrama ----------------------------------------------------------------

plot(erupciones, xlab= "Tiempo de espera entre erupciones (min)",
     ylab= "Duracion de las erupciones (min)", col = "red", pch=20)


# Estadísticas descriptivas -----------------------------------------------

#media de erupciones
mean(erupciones$eruptions)

#media de waiting
mean(erupciones$waiting)

#Desviacion estandar de erupciones 
sd(erupciones$eruptions)

#Desviacion estandar de waiting
sd(erupciones$waiting)

#Varianza de erupciones 
var(erupciones$eruptions)

#varianza de waiting
var(erupciones$waiting)


# correlación -------------------------------------------------------------

# hipotesis nula: no existe correlacion entre erupcion y tiempo 
# hipotesis alternativa: existe una correlacion positiva entre los valores

cor.test(erupciones$eruptions, erupciones$waiting)

summary(erupciones$eruptions)

erupciones.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
erupciones.lm

summary(erupciones.lm)

plot(erupciones$waiting , erupciones$eruptions, xlab="Tiempo de espera entre
erupciones (min)", ylab = "Duracion de las erupciones (min)")
abline(erupciones.lm, col="red", pch=16)
text(56, 4.5, "Y = -1.874 + 0.075*(x)")


# intercepto (a) = -1.8740
# pendiente (b)= 0.0756

x <- c(80, 40, 45, 53, 61)

# la formula es y= a + bx

# y= -1.8740 + 0.0756*80= 4.174
-1.8740 + 0.0756*80

# y = -1.8740 + 0.0756*40= 1.15
-1.8740 + 0.0756*40

# y = -1.8740 + 0.0756*45= 1.528
-1.8740 + 0.0756*45

# y = -1.8740 + 0.0756*53=2.1328
-1.8740 + 0.0756*53


# y = -1.8740 + 0.0756*61= 2.7276
-1.8740 + 0.0756*61



