from sys import argv

if __name__ == "__main__":
    match len(argv):
        case 2:
            print(f'O número digitado é {argv[1]}')
        case 3:
            print(f'{argv[1]} * {argv[2]} = {int(argv[1])*int(argv[2])}')
        case 4:
            print(f'{argv[1]} * {argv[2]} * {argv[3] }= {int(argv[1])*int(argv[2])*int(argv[3])}')
        case _:
            print('Erro: Insira de 1 a 3 parâmetros.')

