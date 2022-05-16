#!/bin/bash

# Cria arquivos de log para ls
arq=`date +"%d-%m-%y-%H:%M"`
ls -la $HOME >> log.$arq
