void main() {
  var student1 = Student.myCustomConstructor(); //one object and student1 is reference variable
  student1.id = 001;
  student1.name = "Usman";
  print("${student1.id}. ${student1.name}");


  var student2 = Student.anotherCustomConstructor(2,"Aliyu"); //one object and student1 is reference variable

  print("${student2.id}. ${student2.name}");
}

class Student {
  int id = 0;
  String name = "";

  // default named constructor
  Student.myCustomConstructor() {
    print("This is my named constructor");
  }

  // parameterized name constructor
  Student.anotherCustomConstructor(this.id, this.name);
}
