// Named parameter in dart

void main() {
  volume(length: 8, breadth: 4, height: 2);
}

//optional  named parameter
void volume({   length, breadth,  height}) {
  print("length is $length");
  print("breadth is $breadth");
  print("height is $height");
  print("Volume is ${length * height * breadth}");
}
