import 'dart:io';

void main() {
  stdout.write("Enter a number for table: ");
  int number = int.parse(stdin.readLineSync()!);

  print("\nTable of $number:");
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}
