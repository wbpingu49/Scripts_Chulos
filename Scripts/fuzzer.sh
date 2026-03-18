#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Uso: <diccionario> <URL>"
	exit 1
fi

diccionario=$1
url=$2

total_lines=$(wc -l $diccionario | awk '{print $1}')
current_line=0

while read -r linea; do
	current_line=$(($current_line + 1))
	echo -ne "Progresp: $current_line/$total_lines\r"

	respuesta=$(curl -s -o /dev/null -w "%{http_code}" "$url$linea/")

	if [ "$respuesta" -eq 200 ]; then
		echo "URL accesible:$url$linea/"
	fi

done < "$diccionario"
