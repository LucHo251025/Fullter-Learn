import 'dart:math';

class Point{
  int x; // mặc định thuộc tính đã có getter/setter
  int y;

  Point(this.x, this.y);

  Point.original() : x = 0, y = 0; // constructor named 'original'

double distanceTo(Point other) => sqrt(pow(x-other.x,2) + pow(y - other.y,2));

void showInfo() {
    print("Point: ($x, $y)");
  }
}

void main() {

  var p1 = Point(3, 4);
  var p2 = Point(6, 8);

  p1.showInfo();
  p2.showInfo();

  print("Distance between p1 and p2: ${p1.distanceTo(p2)}");

  var origin = Point.original();
  origin.showInfo(); // Output: Point: (0, 0)
}