#!/bin/bash
n=$1
python3 - << END
n=$n; mask=[255 if n>=8 else (256-2**(8-n) if n>0 else 0) for n in [n, n-8, n-16, n-24]]; print(".".join(map(str, mask)))
END
