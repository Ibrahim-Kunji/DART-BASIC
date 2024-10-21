void main() {
  List<String> contries = ["Nigeria", "USA", "India"];

  contries.forEach((i) => print(i));
  print("\n");

  List<int?> numberslist = []; //Growable list
  numberslist.add(1);
  numberslist.add(3);
  numberslist.add(5);
  numberslist.add(7);

  numberslist[0] = 7; //update operation
  numberslist[1] = null; //Delete operation

  numberslist.remove(3);
  numberslist.add(9);
  numberslist.removeAt(1);
  numberslist.contains(9);
  //  numberslist.clear();

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
