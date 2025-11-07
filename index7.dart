void main() {
  List<int> numbers = [5, -3, 8, -1, 0, 9, -6];

  List<int> positiveNumbers = [];
  List<int> negativeNumbers = [];

  for (int n in numbers) {
    if (n > 0) {
      positiveNumbers.add(n);
    } else if (n < 0) {
      negativeNumbers.add(n);
    }
  }

  print("Positive numbers: $positiveNumbers");
  print("Negative numbers: $negativeNumbers");
}
