void main() {
  var vector1 = Vector(2, 3);
  var vector2 = Vector(5, 7);
  var vector3 = vector1 + vector2;

  print('Vector 3: $vector3');
}

class Vector {
  int x;
  int y;

  Vector(this.x, this.y);

  Vector operator +(Vector other) => Vector(x + other.x, y + other.y);

  @override
  String toString() {
    return 'Vector{x: $x, y: $y}';
  }
}