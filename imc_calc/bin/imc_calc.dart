import 'dart:convert';
import 'dart:io';

import 'package:imc_calc/class/person.dart';

void main(List<String> arguments) {
  try {
    print("What's your name?");
    var name = stdin.readLineSync(encoding: utf8)!;
    print("Height:");
    var height = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");
    print("Weight:");
    var weight = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");

    var p1 = Person(name, height, weight);
    p1.setName(name);
    p1.setHeight(height);
    p1.setWeight(weight);
    double imc = p1.imc(p1.getHeight(), p1.getWeight());
    print(
        "your BMI with ${p1.getHeight()} and ${p1.getWeight()} is ${imc.toStringAsFixed(2)} ");
  } catch (e) {
    print("ERROR: $e");
    print("REBOOT THE PROGRAM");
  }
}
