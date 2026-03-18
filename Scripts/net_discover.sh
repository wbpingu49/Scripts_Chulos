#!/bin/bash

function ctrl_c() {
	echo "Cancelando ejecucion"
	exit 1
}

# Cancelacion de la ejecucion del archivo
trap ctrl_c SIGINT

for i in {1..255}; do
	timeout 1 bash -c "ping -c 1 192.168.1.$i" >/dev/null 
#	ping -c 1 192.168.1.$i >/dev/null 
	if [ $? -eq 0 ]; then
		echo "El host 192.168.1.$i está activo"
	fi
done
