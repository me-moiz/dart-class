void main() {
  // 1️⃣ Countdown from 10 to 1
  for (int i = 10; i > 0; i--) {
    print(i);
  }

  // 2️⃣ Count up from 1 to 10
  for (int i = 1; i < 11; i++) {
    print(i);
  }

  // 3️⃣ While loop with break
  int j = 0; // changed variable name to avoid redeclaration error
  while (j <= 20) {
    if (j == 2) {
      break;
    }
    print(j);
    j++;
  }

  // 4️⃣ While loop with continue
  int k = 0; // new variable instead of reusing 'i'
  while (k < 10) {
    k++;
    if (k == 2) {
      continue;
    }
    print(k);
  }

  // 5️⃣ Switch statement
  var lang = "Dart";

  switch (lang) {
    case "Java":
      print("language is Java");
      break;
    case "Python":
      print("language is Python");
      break;
    case "Dart":
      print("language is Dart");
      break;
    default:
      print("language is not supported");
  }

  // 6️⃣ If-else condition (fixed missing condition)
  if (lang == "dart") {
    print("language is Dart");
  } else {
    print("language is not Dart");
  }

  // 7️⃣ Do-while loop
  int m = 0; // again use new variable
  do {
    print(m);
    m++;
  } while (m < 10);
}
