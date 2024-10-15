void main() {
  var student1 = Student();

  student1.name = "Sadiq"; // calling default setter  to set value
  print("My name is ${student1.name}"); //calling default getter to set value

  student1.percentage = 480; //calling custom setter  to set value
  if (student1._percent >= 50 && student1._percent < 100) {
    print("Excelent, you got ${student1.percentage}% and you passed!");
  } else if (student1._percent < 50 && student1._percent >= 0) {
    print("Sorry, you got ${student1.percentage}% and you failed!");
  } else {
    print("Please, enter a vallid score!");
  }


}

class Student {
  String name = ""; // Instance variable
  int total_marks = 500;
  double _percent = 0.0; // private Instance variable for it is own library 
  

  // instance variable with custom setter
  void set percentage(double marksSecured) => _percent = ((marksSecured / total_marks) * 100);
  

  // instance variable with custom getter
  double get percentage => _percent;
}

