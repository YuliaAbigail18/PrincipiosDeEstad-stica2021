#YULIA ABIGAIL ORTIZ CUEVAS 
#26.04.2021
#ASIGNACIÓN 5


# Ejercicio 1 -------------------------------------------------------------


speed <- c(2, 3, 5, 9, 14, 24, 29, 34) 
head(speed)

abundance <- c(6, 3, 5, 23, 16, 12, 48, 43) 
head(abundance)

#media
mean(speed)
mean(abundance)

#Diagrama
plot(speed, abundance, col= "red", xlab = "Variable independiente", 
     ylab= "Variable dependiente", pch=20)
abline(lm(abundance~ speed))

#correlacion
cor.test(speed, abundance)

#Datos
#grados de libertad = 6 
#Correlación o r = 0.84 
#Valor de significancia = 0.0083
#Existe una significancia ya que p-value es menor a 0.05 
#hipotesis alternativa

# Ejercicio 2 -------------------------------------------------------------

#Importar datos

suelo <- read.csv("https://raw.githubusercontent.com/YuliaAbigail18/PrincipiosDeEstad-stica2021/main/suelo.csv")
head(suelo)

#correlacion ph-n
cor.test(suelo$pH, suelo$N)
#Diagrama ph-n
plot(suelo$pH, suelo$N)

#correlación ph-dens
cor.test(suelo$pH, suelo$Dens)
#diagrama ph-dens
plot(suelo$pH, suelo$Dens)

#correlacion ph-p
cor.test(suelo$pH, suelo$P)
#diagrama
plot(suelo$pH, suelo$P) 

#correlacion ph-ca
cor.test(suelo$pH, suelo$Ca)
#Diagrama
plot(suelo$Ca, suelo$Ca)

#correlacion ph-mg
cor.test(suelo$pH, suelo$Mg)
#diagrama
plot(suelo$pH, suelo$Mg)

#correlacion ph-k
cor.test(suelo$pH, suelo$K)
#diagrama ph-k
plot(suelo$pH, suelo$K)

#correlacion ph
cor.test(suelo$pH, suelo$Na)
#Diagrama
plot(suelo$pH, suelo$Na)

#correlacion ph-conduct
cor.test(suelo$pH, suelo$Conduc)
#diagrama
plot(suelo$pH, suelo$Conduc)







