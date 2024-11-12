// Default parameters

void main() {
  volume(length: 8, breadth: 4);
}


void volume({length, breadth,  height= 30}) {
  print("length is $length");
  print("breadth is $breadth");
  print("height is $height");
  print("Volume is ${length * height * breadth}");
}
