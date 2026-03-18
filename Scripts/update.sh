#!/bin/bash

echo -e  "Opción 0: Actualizar sistema\nOpción 1: Salir"
read -p  "" opcion

if [ "$opcion" -eq "0" ]; then
	apt update
	apt upgrade -y
	apt autoremove -y
	apt autoclean -y
	echo "El sistema se ha actualizado correctamente"
elif [ "$opcion" -eq "1" ]; then
	exit
fi 
