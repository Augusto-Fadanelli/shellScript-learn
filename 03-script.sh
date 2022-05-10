#!/bin/bash

# Cálculo simples
var1=10
var2=5
var3=2

var4=$[$var1 * ($var2 - $var3)]

echo "$var1 * ($var2 - $var3) = $var4"

# Cálculo com bc
num1=100
num2=3
res=`echo "scale=5; $num1/$num2" | bc`
echo "bc: 5 / 2 = $res"

# bc com redirecionamento inline
n1=6
n2=5
n3=4

n4=`bc << EOF
    scale=4
    a1=($n1 * $n2)
    b1=($n3 + $n1)
    a1 + b1
EOF`
echo "bc inline: $n4"




