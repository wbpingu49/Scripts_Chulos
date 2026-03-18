#!/bin/bash

# Lectura de variables desde la ejecucion
#variable1=$1
#variable3=$3
#variable2=$2

# Uso de comando a nivel de sistema
#CmdLS=$(ls)
#CmdPwd=$(pwd)

#echo -e "Estamos en la ruta: $CmdPwd, con el contenido: \n$CmdLS"

# Lectura de variables

#read -p "Introduce la variable 1" variable1
#read -p "Introduce la variable 2" variable2
#read -p "Introduce la variable 3" variable3

#echo "Variable 1: $variable1, variable 2: $variable2, variable 3: $variable3"

#	IF	#

# Condicional if
# Los diferentes condicionales para números son "-eq = Igual", "-lw = Menor" que,
# "-gt = Mayor que". El operado de "o es ||" y el de "y es &&".
#if [ "$variable1" = "1" ]; then
#	echo "El numero es 1"
#elif [ "$variable1" = "2" ]; then
#	echo "EL numero es 2"
#else 
#	echo "El numero no esta dentro del rango"
#fi

#	CASE	#

# Declaracion case
#case "$variable1" in
#
#	"0")
#		echo "opcion 1"
#		;;
#	"1")
#		echo "opcion 2"
#		;;
#	*)
#		echo "No cuadra"
#		;;
#esac


# Declaracion de un array
#lista=$(cat ejemplo.txt | awk '{print $1}')

# Para poder operar con numeros, hay que declarar los enteros con "declare -i"
#declare -i conta=1

#	FOR	#

# Bucle 
#for a in $lista; do
#	echo $a $conta
#	conta=$conta+1
#done

#	WHILE	#
#contador=1

# Recordar los comparativos -eq -lt -gt
#while [ $contador -lt 5 ]; do
#	echo "$contador"
#	contador=$((contador + 1))
#done
