void main() {

}

class Rectangle2D {
  int x;
  int y;
  int width;
  int height;

  Rectangle2D({required this.x,required this.y,required this.width,required this.height});

  int perimeter() {
    return 2 * (width + height);
  }
  int area() {
    return width * height;
  }
}

class Rectangle3D extends Rectangle2D {
  int z;
  int depth;

  Rectangle3D({required super.x, required super.y, required super.width, required super.height,required this.z,required this.depth,});

  @override
  int area() {
    // TODO: implement area
    return 2* (width * height + width * depth + height * depth);
  }
}