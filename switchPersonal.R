switchPersonal = function(valor) 
{
  switch(valor,
         "Opción 1" = {
           print("al parecer te gusta mucho el numero 1")
         },
         "Opción 2" = {
           print("te gustan los pares al parecer (2) ")
         },
         "Opción 3" = {
           print("por que alguien escogeria el 3?")
         },
         "Otra 4" = {
           print("cuatro paredes")
         },
         "Otra Opción" = {
           print("selecciono otra opción")
         },
         {
           # Código para el caso predeterminado
           print("solo se contar hasta cuatro jeje")
         })
}

# Solicitar un numero

cat("Ingrese un valor numérico de aqui: (1, 2, 3, 4): ")
valor = as.integer(readline())

switchPersonal(valor)
