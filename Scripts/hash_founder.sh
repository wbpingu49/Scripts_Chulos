#!/bin/bash

# Lectura del archivo a encontrar
read -p "Usuario a encontrar: " usr

# Busqueda del archivo
resultado=$(find / -name shadow 2>/dev/null)

# Cambio de las contrabarras por espacios y
#seleccion de la ultima columna(El archivo)
hash=$(cat $resultado | grep "$usr" | tr ':' ' ' |awk '{print $2}')
usr=$(cat $resultado | grep "$usr" | tr ':' ' ' |awk '{print $1}')

echo -e "El hash del usuario $usr es:\n$hash" 

echo -e "Quieres guardar el hash en un archivo\n0 - Si\n1 - No"
read -p "" opc

if [ $opc -eq 0 ]; then
	read -p "Nombre del archivo: " file
	touch $file
	echo $usr:$hash > $file
else 
	exit
fi
