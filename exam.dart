// Class 12 – Dart Programming Exam (All 10 Questions Solved)
// ---------------------------------------------

import 'dart:io';

void main() {
  print("========== DART PROGRAMMING EXAM ==========\n");

  // Q1: Sum of two numbers
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Q1) Sum = ${a + b}\n");

  // Q2: Even or Odd
  stdout.write("Enter a number to check even/odd: ");
  int n = int.parse(stdin.readLineSync()!);
  if (n % 2 == 0)
    print("Q2) $n is even\n");
  else
    print("Q2) $n is odd\n");

  // Q3: Print numbers 1 to 10
  print("Q3) Numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    stdout.write("$i ");
  }
  print("\n");

  // Q4: Factorial of a number
  stdout.write("Enter a number to find factorial: ");
  int fnum = int.parse(stdin.readLineSync()!);
  int fact = 1;
  for (int i = 1; i <= fnum; i++) {
    fact *= i;
  }
  print("Q4) Factorial of $fnum = $fact\n");

  // Q5: Largest number in list
  List<int> numbers = [12, 45, 67, 23, 89, 34];
  int maxNum = numbers[0];
  for (int num in numbers) {
    if (num > maxNum) maxNum = num;
  }
  print("Q5) List: $numbers");
  print("Q5) Largest number = $maxNum\n");

  // Q6: Celsius to Fahrenheit
  stdout.write("Enter temperature in Celsius: ");
  double c = double.parse(stdin.readLineSync()!);
  double f = (c * 9 / 5) + 32;
  print("Q6) $c°C = $f°F\n");

  // Q7: Reverse a string
  stdout.write("Enter a string to reverse: ");
  String str = stdin.readLineSync()!;
  String reversed = str.split('').reversed.join();
  print("Q7) Reversed string: $reversed\n");

  // Q8: Check palindrome
  stdout.write("Enter a word to check palindrome: ");
  String word = stdin.readLineSync()!;
  String rev = word.split('').reversed.join();
  if (word == rev)
    print("Q8) '$word' is a palindrome\n");
  else
    print("Q8) '$word' is not a palindrome\n");

  // Q9: Student class and object
  print("Q9) Creating a Student object...");
  Student s1 = Student("Ali", 17, "A");
  s1.display();
  print("");

  // Q10: Print even numbers from list
  List<int> nums = [2, 5, 8, 11, 14, 17, 20];
  List<int> evens = nums.where((n) => n % 2 == 0).toList();
  print("Q10) Original List: $nums");
  print("Q10) Even numbers: $evens");

  print("\n========== END OF EXAM ==========");
}

// Q9 – Student Class
class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
  }
}
