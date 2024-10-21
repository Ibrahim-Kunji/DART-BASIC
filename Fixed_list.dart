void main() {
  List<int?> numberslist = List.filled(5, 0);
  numberslist[0] = 1;
  numberslist[1] = 2;
  numberslist[2] = 3;
  numberslist[3] = 4;
  numberslist[4] = 5;

  numberslist[0] = 7; //update operation
  numberslist[1] = null; //Delete operation
  // print(numberslist[1]);

  for (int? i in numberslist) {
    //using individual element
    print(i);
  }
  print("\n");

  numberslist.forEach((i) => print(i)); // using lambda
  print("\n");
  for (int i = 0; i < numberslist.length; i++) {
    print("List[$i] = ${numberslist[i]}");
  }
}
