import 'dart:convert';
import 'dart:io';

void main() async {
  final jsonPath = './dados.json';

  final data = await File(jsonPath).readAsString();

  final List<dynamic> dataSet = jsonDecode(data);

  List<double> newDataSet =  fatZero(dataSet);

  double min = minFat(newDataSet);
  double max = maxFat(newDataSet);
  double mean = meanFat(newDataSet);
  int numDays = contDays(newDataSet);

  print("analise mensal:");
  print("--------------------------------------------------------------------------");
  print("menor valor do mes: $min");
  print("maior valor do mes: $max");
  print("media valor do mes: $mean");
  print("nuemro de dias com o valor maior que a media: $numDays");
}

int contDays(List<double> input)
{
  if (input.isEmpty) {
    throw ArgumentError("lista vazia");
  }

  double mean = meanFat(input);
  int numDay = 0;
  for(var item in input)
  {
    if(item > mean)
    {
      numDay++;
    }
  }

  return numDay;
}

double meanFat(List<double> input)
{
  if (input.isEmpty) {
    throw ArgumentError("lista vazia");
  }

  double meanValue = 0;
  double sum = 0;
  for(var item in input)
  {
    sum += item;
  }

  meanValue = sum/input.length;

  return meanValue;
  
}

double minFat(List<double> input)
{
  if(input.isEmpty){
    throw ArgumentError("lista vazia");
  }

  double minvalue = input[0];

  for(var item in input)
  {
    if(item<minvalue)
    {
      minvalue = item;
    }

  }

  return minvalue;
}

double maxFat(List<double> input)
{
  if (input.isEmpty) {
    throw ArgumentError("lista vazia");
  }

  double maxValue = input[0];

  for (var item in input) {
    if (item > maxValue) {
      maxValue = item;
    }
  }

  return maxValue;
}

List<double> fatZero(List input) 
{
  List<double> valores = [];
  for (var item in input) {
    var valor = item['valor'];

    if (valor != 0) {
      valores.add(valor);
    }
  }

  return valores;
}
