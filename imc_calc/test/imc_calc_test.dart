import 'package:imc_calc/class/person.dart';
import 'package:test/test.dart';

void main() {
  var p1 = Person("Leo", 1.90, 79.0);
  var name = "Leo";
  var height = 1.90;
  var weight = 79.0;
  p1.setHeight(height);
  p1.setName(name);
  p1.setWeight(weight);
  test('data', () {
    expect(p1.getName(), "Leo");
  });
  test('dataHeight', () {
    expect(p1.getHeight(), 1.90);
  });
  test('dataWeight', () {
    expect(p1.getWeight(), 79.0);
  });

  test('calculate', () {
    expect(p1.imc(p1.getHeight(), p1.getWeight()).toStringAsFixed(2), "21.88");
  });
}
