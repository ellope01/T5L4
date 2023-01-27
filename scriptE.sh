#!/bin/bash

lineas=`cat disc.txt | wc -l`

for i in `seq 2 $lineas`
do 
    porcentaje=`cat disc.txt | head -n$i | tail -1 | awk '{print $5}' | sed 's/%//g'`

    if [ $porcentaje -ge 41 ] && [ $porcentaje -le 50 ]
    then
        `cat disc.txt | head -n$i | tail -1 >> sol.txt`
    fi
     
done