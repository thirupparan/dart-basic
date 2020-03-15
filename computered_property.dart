import 'dart:math';

void main() {
  final square = Square(side: 10.0);
  //print(square.area());
  printArea(square);
  final circle = Circle(radius: 5.0);
  //print(circle.area());
   printArea(circle);
}

/*
 Abstract classes help us to program to interface ,not implementations.
 */

void printArea(Shape shape) {
  print(shape.area);
}

abstract class Shape {
  double get area;
}

class Square implements Shape {
  Square({this.side});
  final double side;
  double get area => side * side;
}

class Circle implements Shape {
  Circle({this.radius});
  final double radius;
  double get area => radius * radius * pi;
}
