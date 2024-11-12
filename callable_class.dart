void main() {
  var person1 = person();
  var msg = person1("Ibrahim", 25);
  print(msg);
  
}

class person {
  String call(String name, int age) {
    return "The name of the person is $name and He is $age years old";
  }
}
