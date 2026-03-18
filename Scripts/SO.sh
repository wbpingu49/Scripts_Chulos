#!/bin/bash

host=$1

echo "Ping a $host"

ping -c 1 $host > ping.log

if test $(grep ttl=64 ping.log -c) = 1; then
	echo "Se trata de un Linux"
elif test $(grep ttl=128 ping.log -c) = 1; then
	echo "Se trata de un Windows"
fi 

