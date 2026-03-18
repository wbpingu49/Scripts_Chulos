#!/bin/bash

Interface="eth0"
DUMP_file="capture.pcap"
HTTP_port="80"

tcpdump -i $Interface -w $DUMP_file &

sleep 5

python3 -m http.server $HTTP_port &

sleep 30

python_process=$(pgrep python3)
dump_process=$(pgrep tcpdump)

kill $python_process
kill $dump_process

echo "Captura finalizada"
