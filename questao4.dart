//Escreva um programa na linguagem que desejar onde calcule o percentual de representação que cada estado teve dentro do valor total mensal da distribuidora.
void main() {
  double sp = 67836.43;
  double rj = 36678.66;
  double mg = 29229.88;
  double es = 27165.48;
  double others = 19849.53;

  double sum = sp + rj + mg + es + others;

  double valSp = calPer(sp, sum);
  double valRj = calPer(rj, sum);
  double valMg = calPer(mg, sum);
  double valEs = calPer(es, sum);
  double valOther = calPer(others, sum);


  print("relatorio mensal da ditribuidora XYZ:");
  print("------------------------------------------------------");
  print("representação do estado de sao paulo: $valSp %");
  print("representação do estado do rio de Janeiro: $valRj %");
  print("representação do estado de Minas Gerais: $valMg %");
  print("representação do estado do Espirito Santo: $valEs %");
  print("representação dos demais estados: $valOther %");

}

double calPer(double input, double total) {
  double result = (input / total) * 100;

  double resultLimitado = double.parse(result.toStringAsFixed(2));

  return resultLimitado;
}
