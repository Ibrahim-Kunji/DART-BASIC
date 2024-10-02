void main() {
  // string interpolation
  String name = "Usman";

  // use ["My name is $name"] instead of  ["My name is " + name];
  print("My name is $name");

  // Number of characters

  //print("The number of characters in string name is " + name.length.toString());
  print("The number of characters in string name is ${name.length} ");

  //  Area of a rectangle
  int l = 4, b = 2;
  print("The area of a rectangle with length $l and breadth $b is ${l * b}");
}
