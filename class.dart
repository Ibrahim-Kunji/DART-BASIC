void main() {
  var student1 = new Student(); //one object and student1 is reference variable
 
  student1.id = 1;
  student1.name = "Ibrahim";   
  student1.study();
  student1.sleep();  
  print("My name is ${student1.name} and my id number is ${student1.id}");


  var student2 = new Student(); //one object and student2 is reference variable
  student2.id = 2;
  student2.name = "Usman";


  print("My name is ${student2.name} and my id number is ${student2.id}");
  student2.study();
  student2.sleep();
}

class Student {
  int id = 0; // Instance or field variable
  String name = ""; // Instance or field variable

  void study() {
    print("${this.name} is now studying");
  }

  void sleep() {
    print("${this.name} is now sleeping");
  }
}
