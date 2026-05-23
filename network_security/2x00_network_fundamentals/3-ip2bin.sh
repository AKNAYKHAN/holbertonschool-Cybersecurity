#!/bin/bash

ip=$1

for octet in $(echo $ip | tr "." " ")
do
    bin=$(echo "obase=2; $octet" | bc)
    printf "%08d" "$bin"
    echo -n "."
done | sed 's/\.$//'
