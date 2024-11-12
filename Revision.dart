/*void main() {
  var name = "Ibrahim";
  var age = 25;
  var height = 1.84;

  final display1 = describe(name:name, age: age, height: height); 
  final display2 = describe(name: "Usman", height: 1.9, age:60);

  print(display1);
  print("\n");
  print(display2);
}
*/

//optional parameter
/*
String describe(String name, int age, [double? height=0.0]) {
  return "Hello, my name is $name.' My name has ${name.length} letters. I'm $age years old. I'm $height meters tall";
}
*/

/*
 // Named parameters
String describe({required String name, required int age,required double height}) {
  return "Hello, my name is $name. My name has ${name.length} letters. I'm $age years old. I'm $height meters tall";
}
*/

// fat arrow
//String describe({required String name, required int age,required double height}) =>"Hello, my name is $name. My name has ${name.length} letters. I'm $age years old. I'm $height meters tall";

void main() {
  final person = Person(name: "Musa", age: 33, height: 3.4);

  print(person.describe());
}

class Person {
  Person({required this.name, required this.age, required this.height});
  String name;
  int age;
  double height;

  String describe() =>
      "Hello, my name is $name. My name has ${name.length} letters. I'm $age years old. I'm $height meters tall";


}
