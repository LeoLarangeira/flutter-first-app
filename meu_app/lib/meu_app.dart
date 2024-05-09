int calculate() {
  return 6 * 7;
}

double calculator(double n1, double n2, String op) {
  double result = 0.0;
  switch (op) {
    case '+':
      result = n1 + n2;
      break;
    case '-':
      result = n1 - n2;
      break;
    case '*':
      result = n1 * n2;
      break;
    case '/':
      result = n1 / n2;
      break;
    default:
      print('Operador inválido');
  }
  return result; // Retorno movido para fora do switch
}
