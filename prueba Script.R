#primer cambio

# Segundo cambio Miguel

#TERCER CAMBIO SANTIAGO 

# Cuarto cambio -> Ivan :p

# Ya me aburri de estudiar para fausto, entonces 
# tratare de avanzar un poco o de dar una idea de como
# podría ser el codigo.

          # OBJETIVOS
# OBTENER MAPA FISICO, FENOIPO, FRECUENCIA DE DOBLES
# RECOMBINANTES DE UNA CRUZA A PARTIR DE UNA TABLA
# DE FRECUENCIAS DE SEGREGACIÓN
# DEFINIR CUANTOS ALELOS USARÉ Y QUE TAN CERCA ESTAN
# EL UNO DEL OTRO (O INVOUCRAR ESTO EN LA FUNCIÓN).

# -> ESO IMPLICA QUE:

# Necesito: Las formulas de C.I y C.C
# Los alelos con los que trabajaré
# Las frecuencias de segregaación


# -> Propongo:
# Una función que ...

# Función para hacer un cuadro de punet con cualquier combinación. Homocigoto
# dominante, recesivo o heterocigotos.
A <-as.character(readline(prompt = "Introduzca el nombre del alelo 1:") -> A)
A

a <-as.character(readline(prompt = "Introduzca el nombre del alelo 1´:") -> a)
a

B <-as.character(readline(prompt = "Introduzca el nombre del alelo 2:") -> B)
B

b <-as.character(readline(prompt = "Introduzca el nombre del alelo 2´:") -> b)
b


# Ahora generare un data frame que contenga estos datos. Esto tiene
# 2 funciones -> A) Identificar visualmente las combinaciones. 
# B) Poder usar la información contenida en ese data frame para obtener
# la razón genotipica y la razón fenotipica.


Cuadro_Punet <- data.frame(
  Alelos = c("A_B","A_b", "a_B", "a_b")
)

Cuadro_Punet$A_B <- c((paste0(A,"/",A,"-",B,"/",B)), (paste0(A,"/",A,"-",B,"/",b)), (paste0(A,"/",a,"-",B,"/",B)), (paste0(A,"/",a,"-",B,"/",b)))
Cuadro_Punet$A_b <- c((paste0(A,"/",A,"-",b,"/",B)), (paste0(A,"/",A,"-",b,"/",b)), (paste0(A,"/",a,"-",b,"/",B)), (paste0(A,"/",a,"-",b,"/",b)))
Cuadro_Punet$a_B <- c((paste0(a,"/",A,"-",B,"/",B)), (paste0(a,"/",A,"-",B,"/",b)), (paste0(a,"/",a,"-",B,"/",B)), (paste0(a,"/",a,"-",B,"/",b)))
Cuadro_Punet$a_b <- c((paste0(a,"/",A,"-",b,"/",B)), (paste0(a,"/",A,"-",b,"/",b)), (paste0(a,"/",a,"-",b,"/",B)), (paste0(a,"/",a,"-",b,"/",b)))

View(Cuadro_Punet)


# Ahora hay que hacer algo que me diga la razón fenotipica y la razón genotipica
# a partir del cuadro de punet.

# Pienso que puedo hacer un ciclo y la ubicación de renglones y columnas [1,1].
# Que vaya de [1, 1 a n] y despues [1 a n, 1]
# Hay cuatro renglones y 5 columnas, pero de las columnas solo me importan de 
# la 2 a la 5, de manera que tambien son 4, por lo tanto tengo 16 combinaciones.

# Despues necesito que identifique la presencia de A o B mayuscula o ab minuscula, ya que eso 
# indica el fenotipo

# ¿Cuantos homocigotos dominantes hay?
# ¿Cuantos homocigotos recesivos hay?
# ¿Cuantos heterocigotos hay?


# Este ciclo me dio todas las posibles combinaciones para las 
# posiciones del cudro de punet
combinaciones <- list()
indice <- 1
for (i in 1:4) {
  for (j in 2:5) {
    combinaciones[[indice]] <- c(i,j)
    indice <- indice + 1
  }
}

# Este codigo ayuda a exraer las combinaciones de las cruzas por columna
combinaciones
Cuadro_Punet[combinaciones[[1]]]$A_B
Cuadro_Punet[combinaciones[[2]]]$A_b
Cuadro_Punet[combinaciones[[3]]]$a_B
Cuadro_Punet[combinaciones[[4]]]$a_b

# Ahora solo necesito saber:
# -> Como identificar homocigotos y heterocigotos con un codigo.
# Pienso que las letras mayusculas pueden ayudar, pero es solo una idea.
