#!/bin/bash
for (( c=1; c<=$1; c++ ))
do  
   docker run -d -ti -p 200$1:22 --name server$c --network $3 $2
done