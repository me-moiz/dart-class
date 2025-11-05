import 'dart:io';

void main() {
  print('--- Simple Calculator ---');
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Choose an operation (+, -, *, /): ');
  String op = stdin.readLineSync()!;

  double result;

  switch (op) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print('Invalid operation!');
      return;
  }

  print('Result: $num1 $op $num2 = $result');
}
