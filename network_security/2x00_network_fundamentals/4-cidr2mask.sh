#!/bin/bash

n=$1
mask=""

for i in 1 2 3 4
do
    if [ $n -ge 8 ]; then
        mask+=255
        n=$((n-8))
    else
        val=$((256 - 2**(8-n)))
        mask+=$val
        n=0
    fi

    [ $i -lt 4 ] && mask+="."
done

echo "$mask"
