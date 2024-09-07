void main()
{
  String word = "hipopotamo";

  String inverseWord = inverterWord(word);

  print("Inversor de palavras: ");
  print("-----------------------------------------------");
  print("palavra original: $word");
  print("palavra invertida: $inverseWord");
}

String inverterWord(String input)
{
  List<String> word = [];
  int size = input.length - 1;
  for(int i = size;i>=0;i--)
  {
    word.add(input[i]);

  }
  String response = word.join();
  return response;
}