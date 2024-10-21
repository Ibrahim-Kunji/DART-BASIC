void main() {
  print("The value of pi is ${Circle.pi}");

  print("The value of pi is ${Circle.max}");
  Circle.calculateArea(2);
  var normal = Circle();
  normal.myNormalFunction();
}

class Circle {
  static const double pi = 3.142; //static variable
  static const double max = 5.0;
  String color = "";

  static void calculateArea(int r) {
    //myNormalFunction(); //not allowed to call intance function
    this.color; //you cannot use "this" keyword and even cannot access instance variable
    double area = r * r * pi;
    print("Area of a circle is  $area");
  }

  void myNormalFunction() {
    calculateArea(9);
  }
}
