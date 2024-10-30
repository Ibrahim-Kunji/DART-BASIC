void main() {
  int? num;

  //second method
  // printSquare(num!);

  //third method

  // printSquare(num ?? 2);
}

printSquare(int num) {
  print(num * num);
}
