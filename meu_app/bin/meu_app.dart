import 'dart:convert';
import 'dart:io';

import 'package:meu_app/meu_app.dart' as meu_app;

int countLetters(String word) {
  int counter = 0;
  String matchCase = 'A';
  for (var i = 0; i < word.length; i++) {
    if (matchCase == word[i].toUpperCase()) {
      counter = counter + 1;
    }
  }
  return counter;
}

void main(List<String> arguments) {
  String texto = 'CARAMBA';
  var texto2 = 'SAUDADES DO ROSA, TÁ MUITO IGUAL';
  String texto3;

  int numero1 = 12;
  var numero2 = 2;
  int numero3;

  List<String> lista = [];
  var lista1 = [];

  print('Hello world: ${meu_app.calculate()}!');
  print("I'm on the main function");

  for (var i = 0; i < texto2.length; i++) {
    //print(texto2[i]);
    lista.add(texto2[i]);
  }
  print(texto2);
  print(texto2.length);
  print(countLetters(texto));
  if (numero1.isEven) {
    print('The number is even');
  } else {
    print('This number is not Even');
  }
  print('Digite a operação (+, -, *, /):');
  var operation = stdin.readLineSync(encoding: utf8)!;

  print('Digite o primeiro número:');
  var n1 = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");

  print('Digite o segundo número:');
  var n2 = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");
  var result = meu_app.calculator(n1, n2, operation);
  print('The result of $operation between $n1 and $n2 is $result');
}
