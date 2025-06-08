class Student {
  String? name;
  int? age;
  double? gba;

  void displayInfo() {
    print("Name: $name, Age: $age, GBA: $gba");
  }
}


void main() {
  var student1 = Student();
  student1.name = "Nguyen Van A";
  student1.age = 20;
  student1.gba = 8.5;
  student1.displayInfo();
}