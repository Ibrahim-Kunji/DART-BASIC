void main() {
  findPerimeter(4, 2); // function call
  int rectArea = getArea(2, 4);
  print("Area of a rectangle is $rectArea");
}

void findPerimeter(int length, int breadth) {
  int perimiter = 2 * (length + breadth);
  print("The perimeter is $perimiter");
}

int getArea(int length, int breadth) {
  int area = length * breadth;

  return area;
}
