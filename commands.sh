env: Lista as variáveis de ambiente
echo $variável : Mostra o que tem na variável
    ex.: echo $PATH
teste='hello' : Cria variável
export teste : Exporta variável
unset teste : Exclui variável
testearray=(Laranja Lima Abaxaki Bergamota) : Cria Array
echo ${testearray[3]} : Acessa um elemento do array
echo ${testearray[*]} : Acessa todos os elementos do array
testearray[2]=Abacaxi : Altera valor do array
testearray[4]=Açaí : Adiciona elemento
unset testearray[1] : Remove um item do array
unset testearray[*] : Remove array inteiro

# Criar aliases:
alias mo='more'
alias lsl='ls -l'

# Ver aliases
alias

# Exlui aliases:
unalias lsl

# Criar função
func(){
> cd /home/hanno
> echo 'Linha acrescentada!' >> test_func
}

# Ver funções
typeset -f

# Executar função
func

# Arquivos de configuração
# /etc/profile -> Arquivo de inicialização, executado durante o login e válido para todo o sistema; contém variáveis de ambiente e programas de inicialização.
# /etc/bashrc ou /etc/bash.bashrc -> Arquivo de inicialização, válido para todo o sistema, executadopelo .bahsrc do usuário para cada shell bash iniciado. Pode conter funções e aliases.
# ~/.bash_profile -> Se existir, será executado após /etc/profile durante o login.
# ~/.bash_login -> Se o .bash_profile não existir, será executado automaticamente durante o login.
# ~/.profile -> Se nenhum dos dois anteriores existirem, será executado automaticamente no login.
# ~/.bahsrc -> Executado automaticamente quando o bash é iniciado interativamente.
# ~/.inputrc -> Contém variáveis e configurações do modo de operação do bash em relação às teclas (vinculação).
# ~/.bash_logout -> Executado automaticamente no logout.

