#!/bin/bash

if ! command -v fdupes &> /dev/null
then
	echo "Instale fdupes"
	exit 1
fi

archivos=$(fdupes -r . | sed 's/^..//')

echo "$archivos" | while  read -r line; do
	rm $line
done
