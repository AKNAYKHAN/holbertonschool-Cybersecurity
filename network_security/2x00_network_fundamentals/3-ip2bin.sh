#!/bin/bash
echo "$1" | awk -F. '{for(i=1;i<=4;i++){printf "%08d", strtonum("0b" dec2bin($i)); if(i<4) printf "."}} function dec2bin(n,r){r=""; while(n>0){r=(n%2)r; n=int(n/2)} return r}'
