//? Liskov Substitution Principle
//? Instances of a class can be replaced by instances of its subclasses without affecting the program.

abstract class Shape {
  int area();
}

class Square extends Rectangle {
  int side = 4;

  @override
  int area() {
    return side * side;
  }
}

class Rectangle extends Shape {
  int width = 10;
  int height = 5;

  @override
  int area() {
    return width * height;
  }

  int perimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  int radius = 5;

  @override
  int area() {
    return (3.14 * radius * radius).toInt();
  }

  int circumference() {
    return (2 * 3.14 * radius).toInt();
  }
}

void main() {
  final myShape = Circle();
  print(myShape.area());
}
