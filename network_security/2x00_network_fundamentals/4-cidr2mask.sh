#!/bin/bash
n=$1; m=$((n/8)); r=$((n%8)); for i in 1 2 3 4; do [ $i -le $m ] && echo -n 255 || [ $i -eq $((m+1)) ] && echo -n $((256 - 2**(8-r))) || echo -n 0; [ $i -lt 4 ] && echo -n .; done; echo
