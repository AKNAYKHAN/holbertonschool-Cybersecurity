#!/bin/bash
n=$1; mask=$(printf '%0.s1' $(seq 1 $n); printf '%0.s0' $(seq 1 $((32-n)))); echo "$mask" | sed 's/\(.\{8\}\)/\1./g' | sed 's/\.$//' | awk -F. '{for(i=1;i<=4;i++){printf strtonum("0b"$i); if(i<4) printf "."}}'
