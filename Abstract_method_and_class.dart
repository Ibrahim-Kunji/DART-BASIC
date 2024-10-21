void main() {
  // var shape = Shape();  Error: cannot instantiate abstract class
  var rectangle = Rectangle("Red");
  rectangle.draw();

  var circle = Circle("Blue");
  circle.draw();
}

abstract class Shape {
  String color = "";

  void draw(); //Abstract method

  Shape(this.color);
}

class Rectangle extends Shape {
  Rectangle(String color) : super(color);
  void draw() {
    print("Drawing Rectangle with $color color.....");
  }
}

class Circle extends Shape {
  Circle(String color) : super(color);

  void draw() {
    print("Drawing Circle with $color color.....");
  }
}
