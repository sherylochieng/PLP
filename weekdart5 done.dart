// Define a class for a student
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Define a class for a teacher
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define a class to create student and teacher objects
class School {
  void createObjects() {
    // Create a student object
    Student student = Student('John Doe', 15, '10th Grade');
    // Create a teacher object
    Teacher teacher = Teacher('Mrs. Smith', 35, 'Mathematics');

    // Print student's information
    print('\nStudent Information:');
    student.printInfo();

    // Print teacher's information
    print('\nTeacher Information:');
    teacher.printInfo();
  }
}

void main() {
  // Create an instance of School class
  School school = School();
  // Call the createObjects method to create student and teacher objects
  school.createObjects();
}
