#HW_07
#Alumna: Yulia Abigail Ortiz Cuevas 
#fecha:


# EJERCICIO 1 -------------------------------------------------------------

#Hipotesis nula será que no existen diferencias entre la media es igual a 80 kg
#la hipótesis alternativa esque la media observada es menor a 80 kg.


costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 
            81.94, 80.7,82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62,
            81.4, 74.89, 82.95,73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 
            78.44, 79.01, 80.47, 76.23,78.89, 77.14, 69.94, 78.54, 79.7, 
            82.45, 77.29, 75.52, 77.21, 75.99,81.94, 80.41, 77.7)
#Número de observaciones
n <- length(costal)
n

#media
costal.media <- mean(costal)
costal.media

#Desviación estandar
costal.sd <- sd(costal)
costal.sd

# Necesitamos responder la siguiente pregunta: Dada la desviación estándar 
#(3.056),¿Cuál es la probabilidad de observar una media de la muestra 
#(cuando n = 44) de 78.91 Kg o de menor cantidad si la media verdadera es de 
#80 kg.

costa.se <- costal.sd/ sqrt(n) 
costa.se

#Valor de T
costa.T <- (costal.media - 80)/ costa.se
costa.T

#Valor P
pt(costa.T, df = n-1)

#Usando t.test
t.test(costal, mu= 80, alternative = "less")


#¿cuál es valor de P? 0.01132175
#¿Cual es la hipotesis aceptada?
#La H1 ya que la media es menor a 80
# valor medio de los costales observados son menores o mayores (significativamente)
#dan un valor de 78.9 lo que es menor a 80
#¿Cuántos grados de libertad tiene el experimento? 43


