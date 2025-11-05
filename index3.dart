import 'dart:io';

void main() {
  stdout.writeln("=== Welcome to the Dart Intro Program ===");

  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  // Check agar name empty na ho
  if (name == null || name.trim().isEmpty) {
    print("Name cannot be empty. Please run the program again.");
    return;
  }

  stdout.write("Enter your age: ");
  String? ageInput = stdin.readLineSync();

  // Try parsing age
  int? age = int.tryParse(ageInput ?? '');
  if (age == null) {
    print("Invalid age. Please enter a number next time.");
    return;
  }

  print("\n------------------------------");
  print("Hello, $name!");
  print("You are $age years old.");
  print("After 5 years, you will be ${age + 5} years old.");
  print("------------------------------");
  print("Thank you for using this program!");
}
