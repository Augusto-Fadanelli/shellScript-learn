# Links úteis:
# https://medium.com/totvsdevelopers/entendendo-o-crontab-607bc9f00ed3
# https://www.vivaolinux.com.br/artigo/Como-executar-tarefas-a-cada-5-10-ou-15-minutos

# sudo pacman -S cronie
# sudo apt install cron

# sudo chmod 755 teste-cron.sh

# Para executar teste-cron.sh a cada minuto
# crontab -e
# adicione a segunite linha:
# */1 * * * * /home/afadanelli/Scripts/shell/teste-cron.sh

arq=`date +"%d-%m-%y-%H:%M"`
echo hi >> ~/teste-log.$arq
