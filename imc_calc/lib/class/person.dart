class Person {
  String name = "";
  double height = 0.0;
  double weight = 0.0;
  Person(String name, double height, double weight) {
    name = name;
    height = height;
    weight = weight;
  }
  void setName(String name) {
    this.name = name;
  }

  void setHeight(double height) {
    this.height = height;
  }

  void setWeight(double weight) {
    this.weight = weight;
  }

  String getName() {
    return name;
  }

  double getHeight() {
    return height;
  }

  double getWeight() {
    return weight;
  }

  double imc(double height, double weight) {
    return weight / (height * height);
  }
}
