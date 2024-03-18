import 'dart:io';

// Define an interface
abstract class Readable {
  void readData();
}

// Define a base class
class BaseModel {
  String name;

  BaseModel(this.name);

  void displayInfo() {
    print("Name: $name");
  }

  // Method to demonstrate the use of a loop
  void countNameCharacters() {
    int count = 0;
    for (var char in name.runes) {
      count++;
    }
    print("Number of characters in name: $count");
  }
}

// Subclass that inherits from BaseModel and implements Readable interface
class SubModel extends BaseModel implements Readable {
  int age;

  SubModel(String name, this.age) : super(name);

  // Override displayInfo method
  @override
  void displayInfo() {
    super.displayInfo();
    print("Age: $age");
  }

  // Method to initialize instance with data from a file
  @override
  void readData() {
    final file = File('data.txt');
    final lines = file.readAsLinesSync();
    final data = lines.first.split(',');
    name = data[0];
    age = int.parse(data[1]);
  }
}

void main() {
  // Initialize instance with data from a file
  final obj = SubModel("", 0);
  obj.readData();
  obj.displayInfo();

  // Demonstrate method overriding
  obj.displayInfo();

  // Demonstrate method using loop
  obj.countNameCharacters();
}
