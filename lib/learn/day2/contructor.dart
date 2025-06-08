class Student {
  String? name;
  int? age;
  double? gba;

  // Constructor with parameters
  Student(this.name, this.age, this.gba);

  // Method to display student information
  void displayInfo() {
    print("Name: $name, Age: $age, GBA: $gba");
  }
}

void main() {
  var student1 = Student("Nguyen Van A", 20, 8.5);
  student1.displayInfo();
}