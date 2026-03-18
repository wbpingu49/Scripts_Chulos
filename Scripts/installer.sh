#!/bin/bash

# Lectura del programa
read -p "Nombre del programa a instalar: " program

# Comprobacion de si se encuentra en los repositorios
apt-cache show $program >/dev/null

# Salida del codigo del anterior comando
codigo=$(echo $?)

# Condicional de comprobación de si existe
if [ $codigo -eq 0 ]; then
	apt install -y $program
else 
	echo "El programa no se encontro"
	exit
fi
