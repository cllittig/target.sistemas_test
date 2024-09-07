//import 'dart:io';

void main() {
  print("Escreva um número de entrada: ");
  /*String? entrada = stdin.readLineSync();
  int input = int.parse(entrada!);*/
  //o pedaço acima é para caso queira entrada do teclado. porém é preciso descomentar a importação no começo do código

  int input = 34;

  bool verificarFib(int numero) {
    if (numero < 0) {
      return false;
    }

    if(numero == 0){
      return true;
    }

    int varUm = 0;
    int varDois = 1;

    while (varDois < numero) {
      int varTemp = varUm;
      varUm = varDois;
      varDois = varTemp + varDois;
    }

    return varDois == numero;
  }

  if (verificarFib(input)) {
    print("$input pertence à sequência de Fibonacci.");
  } else {
    print("$input não pertence à sequência de Fibonacci.");
  }
}
