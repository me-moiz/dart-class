void main() {
  // Dynamic variable: can store any type
  dynamic num1 = 10;
  num1 = 15;
  num1 = "programming";
  print(num1);

  // Constant and variable example
  const num_02 = 20;  // const = cannot change
  var num_03 = 12;    // var = can change
  num_03 = 18;
  print(num_02);
  print(num_03);

  // Dynamic type can change type anytime
  dynamic name1 = "dart";
  name1 = 50;
  name1 = 50.2;
  name1 = false;
  print(name1);

  // Grading example
  int marks = 90;
  if (marks >= 80) {
    print("A+");
  } else if (marks >= 70) {
    print("A");
  } else if (marks >= 60) {
    print("B");
  } else if (marks >= 50) {
    print("C");
  } else {
    print("Failed");
  }

  // Check even or odd number
  int num2 = 40598741;
  if (num2 % 2 == 0) {
    print("even number");
  } else {
    print("odd number");
  }

  // Multiplication table using loop
  num num3 = 100;
  for (int i = 1; i <= 10; i++) {
    print("loop");
    print(num3 * i);
    print("$num3 x $i = ${num3 * i}");
  }

  // Login check using logical operators
  var name2 = "moiz";
  int pass = 123;

  if (name2 == "moiz" && pass == 123) {
    print("login (AND condition true)");
  }

  if (name2 == "moiz" || pass == 123) {
    print("login (OR condition true)");
  } else {
    print("failed");
  }
}
