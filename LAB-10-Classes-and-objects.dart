class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  String toString() {
    return 'Person{name: $name, age: $age, address: $address}';
  }
}

void main() {
  Person person1 = Person('Hanim', 19, 'Ayer tena');
  Person person2 = Person('Abdurezak', 25, 'Winget');

  print('Person 1: $person1');
  print('Person 2: $person2');

  // For Updating
  person1.age = 35;
  person2.name = 'Hamid';

  print('Updated Person 1: $person1');
  print('Updated Person 2: $person2');
}
