# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833
celular <- 300
celular
transporte <- 240
transporte
comestibles <- 1527
comestibles
gimnasio <- 400
gimnasio
alquiler <- 1500
alquiler
otros <- 1833
otros
gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
barplot(gastos, col = "orange", ylab = "gastos", xlab = "celular, transporte, 
comestible,  gimnasio, alquiler, otros",
        main = "Barplot de gastos totales")
Gastos <- c(celular + transporte + comestibles + gimnasio + alquiler + otros)
                                      

      