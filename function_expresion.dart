void main() {
  // expression in function: SHORT HAND SYNTAX

  findPerimeter(4, 2); // function call
  int rectArea = getArea(2, 4);
  print("Area of a rectangle is $rectArea");
}

void findPerimeter(int length, int breadth) => (print("The perimeter is ${2* (length+ breadth)}"));

int getArea(int length, int breadth) => length * breadth;

