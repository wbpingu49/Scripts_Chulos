#!/bin/bash

zip_file="backup.zip"

ssh_user="kali"
ssh_host="192.168.1.143"

remote_path="/home/kali/Desktop"

zip -r "$zip_file" .

scp "$zip_file" "$ssh_user@$ssh_host:$remote_path"

if [ $? -eq 0 ]; then
	echo "Se ha creado correctamente"
else
	echo "La operacion no se ha podido realizar"
fi

rm "$zip_file"
