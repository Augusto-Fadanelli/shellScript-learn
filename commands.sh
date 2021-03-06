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

# Diretórios
# /etc/profile.d/ -> Executa todos os scripts neste diretório após o login do usuário

# Variáveis
# $BASH_ENV -> Configuração para shell não interativo

# Para executar um script.sh, deve-se dar permissão de execução com chmod +x script.sh

# Variáveis de ambiente
echo "Usuario: $USER"
echo "Diretorio home: $HOME"
echo "UID do usuario: $UID"

# Redirecionar saída de comandos a variáveis
dia=`date`
echo "A data é $dia"

# Redirecionar conteúdo de um arquivo para um comando
echo < arq.txt

# Redirecionamento de Entrada Inline
wc << EOF
> teste
> abhsbdh
EOF

# Operações matemáticas (O Bash calcúla apenas com números inteiros, mas pode-se utilizar a calculadora do bash [bc])
var1=$[2 + 6]
echo $var1

# calculadora bc
bc # Abre a calculadora
bc -q # Abre sem mostrar as 'boas vindas'
scale=2 # Define a quantidade de casas decimais após o ponto
a=4 # Criar variáveis
b=6
a/b # Manipular variáveis
sqrt(81) # Raiz quadrada
quit # Sai

# Status de saída do último comando
echo $?
# se 0, o comando anterior foi executado com êxito
# se 127, o comando anterior retornou um erro

# Mudar o status de saída em um script sh
# dentro script
exit 6 # Retorna 6 como status de saída (Obs.: o número deve estar entre 0 e 255)
exit $var # Retorna o valor de uma variável
# no terminal
echo $?

# Sintaxe if then:
if comando
then
  comandos
fi
# ou
if comando; then
  comandos
fi
# else
if comando
then
  comandos
else
  comandos
fi

# Sintaxe if aninhado:
if comando1
then
  comandos
elif comando2
then
  comandos
elif comando3
then
  comandos
else
  comandos
fi

# test
if test condição
then
  comandos
fi
# ou
if[ condição ]
then
  comandos
fi
# Operadores test com números
n1 -eq n2 # n1 == n2
n1 -ge n2 # n1 >= n2
n1 -gt n2 # n1 > n2
n1 -le n2 # n1 <= n2
n1 -lt n2 # n1 < n2
n1 -ne n2 # n1 != n2
# Operadores test com strings
str1 = str2 # str1 == str2
str1 != str2
str1 < str2
str1 > str2
-n str1 # Se str1 não está vazia
-z str1 # Se str1 está vazia
# Comparar arquivos e diretórios
-e caminho    # Verifica se o caminho existe
-d diretório  # Verifica se o caminho existe e se é um diretório
-f arquivo    # Verifica se o caminho existe e se é um arquivo
-r arquivo    # Verifica se o arquivo existe e se possui permissão de leitura para o usuário atual
-s arquivo    # Verifica se o arquivo existe e não está vazio
-w arquivo    # Verifica se o arquivo existe e tem permissão de escrita
-x arquivo    # Verifica se o arquivo existe e possui permissão de execução
-O arquivo    # Verifica se o arquivo existe e é propriedade do usuário atual
-G arquivo    # Verifica se o arquivo existe e seu grupo padrão é o mesmo do usuário atual
arq1 -nt arq2 # Verifica se arq1 é mais novo do que arq2
arq1 -ot arq2 # Verifica se arq1 é mais antigo que arq2
# Operadores booleanos
# AND
[ condição1 ] && [ condição2 ]
# OR
[ condição1 ] || [ condição2 ]

# Case
case <variável> in
  valor1)
    comandos1;;
  valor2)
    comandos2;;
  valor3 | valor4) # valor3 ou valor4
    comandos-3-e-4;;
  *)
    comandos-padrão;;
esac

# For
for valor in lista
do
  comandos
done

for((i=1;i<=15;i++))
do
  echo "Número: $i"
done

# While
var = 100
while [ $var -gt 0 ]
do
  echo $var
  var=$[ $var -1 ]
done

# Until
until comando_de_teste
do
  Bloco de comandos a executar
done

var = 50
until [ $var -eq 0 ] # Executa até que seja verdadeiro
do
  echo $var
  var=$[ $var -2 ]
done

# Parâmetros
$1 # Primeiro parametro passado
$2 # Segundo parametro passado
$3 # Terceiro parametro passado
...
# Ex.: ./quadrado.sh 9
quadrado=$[ $1 * $1 ]
echo "O quadrado de $1 é $quadrado"

# Parâmetros especiais
$# # Mostra o número de parâmetros fornecidos ao rodar o script

