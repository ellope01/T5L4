#!/bin/bash
numLin=`cat disc.txt | wc -l`

for i in `seq 2 $numLin`
do
   porcentaje=`cat disc.txt | head -n$i | tail -1| awk '{print $5}' | sed 's/%//'`
    if [  $porcentaje -ge 10 ] && [ $porcentaje -le 40 ]
    then
       `cat disc.txt | head -n$i | tail -1 >> sol.txt `
    fi
done