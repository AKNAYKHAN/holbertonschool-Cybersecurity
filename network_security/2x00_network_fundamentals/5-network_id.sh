#!/bin/bash
ip=$1; mask=$2
echo $ip $mask | awk -F'[ .]' '{for(i=1;i<=4;i++){printf $i & $(i+4); if(i<4) printf "."}}'
