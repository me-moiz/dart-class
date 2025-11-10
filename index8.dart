import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int fact = 1;
  String steps = "";

  for (int i = number; i >= 1; i--) {
    fact *= i;
    steps += i.toString();
    if (i > 1) {
      steps += " * ";
    }
  }

  print("\n$steps = $fact");
}
