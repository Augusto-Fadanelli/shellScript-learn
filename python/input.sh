#!/bin/bash

case $# in
  1)
    echo "1 parâmetro"
    echo "Primeiro parâmetro: $1"
    python3 multiplica.py $1;;
  2)
    echo "2 parâmetros"
    echo "Primeiro parâmetro: $1"
    echo "Segundo parâmetro: $2"
    python3 multiplica.py $1 $2;;
  3)
    echo "3 parâmetros"
    echo "Primeiro parâmetro: $1"
    echo "Segundo parâmetro: $2"
    echo "Terceiro parâmetro: $3"
    python3 multiplica.py $1 $2 $3;;
  *)
    echo "Erro: Insira de 1 a 3 parâmetros."
esac
