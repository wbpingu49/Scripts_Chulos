#!/bin/bash

for archivo in *
do
	extension=$(echo "$archivo" | awk -F '.' '{print $NF}')
	case $extension in
		sh)
			zip -r scripts.zip $archivo >/dev/null 
			;;	
		txt)
			zip -r documentos.zip $archivo >/dev/null
			;;
		*)
			echo "Formato no identificado"
			;;
	esac
done
mkdir -p server / && mv documentos.zip server/ && mv scripts.zip server/

ip=$(hostname -I)

echo "Conectate a la ip: $ip, para descargar los archivos"

cd server/ && sudo python3 -m http.server 80
