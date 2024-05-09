//import 'package:dart_classes/dart_classes.dart' as dart_classes;
import 'package:dart_classes/classes/pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa("Leo", "Lambimia");
  print(p1);
  print('NAME BEFORE THE SETTER METHOD');
  print(p1.nome);
  print('AGE BEFORE THE SETTER METHOD');
  print(p1.idade);
  print('ADDRESS BEFORE THE SETTER METHOD');
  print(p1.endereco);
  print("");
  print("================================");
  print("");
  p1.setEndereco("Rua Lambia");
  p1.setIdade(21);
  p1.setNome("Leonardo");
  print('NAME AFTER THE SETTER METHOD');
  print(p1.getNome());
  print('AGE AFTER THE SETTER METHOD');
  print(p1.getIdade());
  print('ADDRESS AFTER THE SETTER METHOD');
  print(p1.getEndereco());
  print("");
  print("================================");
  print("");
  print("Override");
  print(p1.toString());
}
