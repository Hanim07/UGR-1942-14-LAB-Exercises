void main() {
  Map<String, int> studentMarks = {
    'Hanim': 80,
    'Heran': 87,
    'Senna': 60,
  };

  studentMarks.putIfAbsent('Abebe', () => 88);
  
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  print('Does the map contain Hanim? ${studentMarks.containsKey('Hanim')}');
}
