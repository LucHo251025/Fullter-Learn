void main() {
  var shape = Circle(x:10,y:4,radius: 3);
  print("Perimeter of Circle: ${shape.perimeter()}");
}

abstract class Shape2D {
  int x;
  int y;

  Shape2D({required this.x, required this.y});

  int perimeter(); // abstract method
  int area();
}

class Circle extends Shape2D {
  int radius;

  Circle({required super.x, required super.y, required this.radius});

  @override
  int perimeter() {
    return (2 * 3.14 * radius).round();
  }

  @override
  int area() {
    return (3.14 * radius * radius).round();
  }
}