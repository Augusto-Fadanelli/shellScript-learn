# Links úteis:
# https://www.vivaolinux.com.br/dica/Introducao-ao-awk

# sudo chmod 755 change-words.sh

# Substitui palavras no arquivo the-hobbit.txt
# Exemplo: ./change-words.sh hobbit robert

#!/bin/bash

if [ $# -eq 2 ]
then
    echo "Substituindo $1 em the-hobbit.txt por $2"
    awk -v A="$1" -v B="$2" '{ gsub(A,B); print $0 > "the-hobbit.txt" }' the-hobbit.txt
else
  echo "Erro: Insira dois parâmetros."
fi
