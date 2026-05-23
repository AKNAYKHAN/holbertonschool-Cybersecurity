#!/bin/bash

num=$1
binary=$(echo "obase=2; $num" | bc)
printf "%8s\n" "$binary" | tr ' ' '0'
