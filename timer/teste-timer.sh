#!/bin/bash

# Sobre timers:
# https://wiki.archlinux.org/title/Systemd_(Portugu%C3%AAs)/Timers_(Portugu%C3%AAs)
# https://opensource.com/article/20/7/systemd-timers

# Listar timers:
# systemctl list-timers
# Listar units:
# systemctl list-unit-file

# Como configurar:
# Copie teste-timer.timer e teste-timer.service para /etc/systemd/system/
# ative o timer: sudo systemctl start teste-timer.timer
# sudo systemctl enable teste-timer.timer
# systemctl status teste-timer.timer

# Obs: os logs aparecerão no diretório /root

arq=`date +"%d-%m-%y-%H:%M"`
echo oi >> ~/teste-log.$arq

