#!/bin/bash
echo "Gateway: " >> ip_file
docker inspect -f '{{range .NetworkSettings.Networks}}{{.Gateway}}{{end}}' server$1 >> ip_file
for (( c=1; c<=$1; c++ ))
do  
	echo "server$c: " >> ip_file
	docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server$c >> ip_file
done