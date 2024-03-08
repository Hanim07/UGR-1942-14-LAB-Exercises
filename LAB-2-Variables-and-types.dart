import 'dart:io';

void main() {
  const speedOfLight = 299792458; 
  
  print("Enter the distance in meters: ");
  var distance = double.parse(stdin.readLineSync()!);
  var time = distance / speedOfLight;

  print(
      "The time it takes for light to travel $distance meters is approximately $time seconds.");
}
