class Calculator { 
    double? num1;
    double? num2;

    String? operand;

    String output = "0";
    String input = "";


  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      input = "";
      num1 = 0;
      num2 = 0;
      operand = "";
      output = "0";
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
      num1 = double.parse(input);
      operand = buttonText;
      input = "";
    } else if (buttonText == "=") {
      num2 = double.parse(input);

      switch (operand) {
        case "+":
          output = (num1! + num2!).toString();
          break;
        case "-":
          output = (num1! - num2!).toString();
          break;
        case "*":
          output = (num1! * num2!).toString();
          break;
        case "/":
          output = (num1! / num2!).toString();
          break;
      }

      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      input = input + buttonText;
      output = input;
    }
  }

  String getOutput() {
    return double.parse(output).toStringAsFixed(2);
  }

}