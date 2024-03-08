import 'dart:io';

void main() {
  print("Enter your numerical grade:");
  int numericalGrade = int.parse(stdin.readLineSync()!);

  String letterGrade;
  if (numericalGrade >= 83) {
    letterGrade = 'A';
  } else if (numericalGrade >= 68) {
    letterGrade = 'B';
  } else if (numericalGrade >= 50) {
    letterGrade = 'C';
  } else if (numericalGrade >= 40) {
    letterGrade = 'D';
  } else {
    letterGrade = 'F';
  }

  print("Your letter grade is: $letterGrade");
}
