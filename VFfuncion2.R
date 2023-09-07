VFfuncion2=function(umbral, nIter) 
{
  
  # Creamos los objetos con los datos de entrada del problema:
  VA = 1                     # Valor actual de un peso
  i = 1                      # Tasa de interés anualizada de 100% (i=1)
  nlter = nIter              # Número de iteraciones (cálculos) que deseamos realizar
  VF0 = 1                    # El valor inicial del VF en la iteración
  DeltaVF = Inf              # Asigno un valor inicial del incremento del VF en cada iteración
  n = 0                      # Valor inicial a n en las iteraciones
  
  # Operador while:
  while (n < nIter && DeltaVF > umbral) 
    {
    
    # Actualizo el valor de n, según el número de iteración realizado:
    n = n + 1
    
    # Calculo el valor futuro:
    VF = VA * (1 + (1 / n))^n
    
    # Actualizamos el incremento del valor futuro de esta iteración con el de la iteración anterior (VF0):
    DeltaVF = VF - VF0
    
    # Actualizo el valor futuro de esta iteración como el valor futuro "de la iteración anterior" para futuras iteraciones:
    VF0 = VF

    }
  
  if (DeltaVF <= umbral) 
    {
    mensaje = paste0("Se detuvo al llegar al umbral de diferencia de los valores futuros (", umbral, ").")
    }else 
    {
    mensaje = paste0("Se detuvo al cumplir el número de iteraciones en nIter (", nIter, ").")
    }
  
  print
  (
    paste0("Después de ", n, " iteraciones, ",
           "se llegó a un VF de ", VF, ", ", mensaje)
  )
}
VFfuncion2(0.000000000001, 100000)

