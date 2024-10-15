void main() {
  var student1 = Student(); //one object and student1 is reference variable
  student1.id = 001;
  student1.name = "Usman";

  print("${student1.id}. ${student1.name}");
}

class Student {
  int id = 0;
  String name = "";

  // default constructor
  Student() {
    print("This is my default constructor");
  }
}
