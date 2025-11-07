import 'dart:io';

String calculateGrade(double percent) {
  if (percent >= 90) return 'A+';
  if (percent >= 80) return 'A';
  if (percent >= 70) return 'B';
  if (percent >= 60) return 'C';
  if (percent >= 50) return 'D';
  return 'F';
}

void main() {
  print('Enter student name:');
  String name = stdin.readLineSync() ?? 'Student';

  print('How many subjects?');
  int subjects = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  if (subjects <= 0) {
    print('Invalid subject count. Exiting.');
    return;
  }

  int totalMarksPerSubject = 100;
  Map<String, int> subjectMarks = {};

  for (int i = 0; i < subjects; i++) {
    stdout.write('Enter subject name ${i + 1}: ');
    String subjectName = stdin.readLineSync() ?? 'Subject ${i + 1}';

    stdout.write('Enter marks for $subjectName (out of $totalMarksPerSubject): ');
    int m = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    if (m < 0) m = 0;
    if (m > totalMarksPerSubject) m = totalMarksPerSubject;

    subjectMarks[subjectName] = m;
  }

  int obtained = subjectMarks.values.fold(0, (a, b) => a + b);
  int total = subjects * totalMarksPerSubject;
  double percent = (obtained / total) * 100;
  String grade = calculateGrade(percent);

  print('\n===== MARKSHEET =====');
  print('Name: $name\n');
  subjectMarks.forEach((subject, mark) {
    print('$subject: $mark / $totalMarksPerSubject');
  });
  print('\nTotal: $obtained / $total');
  print('Percentage: ${percent.toStringAsFixed(2)}%');
  print('Grade: $grade');
  print('=====================');
}
