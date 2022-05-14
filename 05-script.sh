#!/bin/bash

arquivo=`pwd`/arq1
#IFSOLD=$IFS
#IFS=$'\n'

for nome in `cat $arquivo`
do
  echo O nome é: $nome
done
#IFS=$IFSOLD

