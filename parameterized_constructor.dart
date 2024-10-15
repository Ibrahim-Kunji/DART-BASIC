void main() {
  var student1 = Student(001, "Musa"); //one object and student1 is reference variable
  print("${student1.id}. ${student1.name}");
}

class Student {
  int id = 0;
  String name = "";

  // parametirized constructor
  Student(this.id, this.name);
}
