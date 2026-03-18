#!/bin/bash

# Lectura del archivo a encontrar
read -p "Archivo a encontrar: " file

# Busqueda del archivo
resultado=$(find / -name $file 2>/dev/null)

# Cambio de las contrabarras por espacios y
#seleccion de la ultima columna(El archivo)
resultado_formateado=$(echo $resultado | tr '/' ' ' |awk '{print $NF}')

echo "El archivo $resultado_formateado se encuentra en $resultado" 
