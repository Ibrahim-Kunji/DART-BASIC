// Method Overriding Example
void main() {
  var dog = Dog();

  print("The color of my dog is ${dog.color}"); // Dog's color
  print("My dog says: ${dog.bark()}"); // Dog's bark
  dog.eat(); // Overridden eat() method
}

class Animal {
  String color = "Brown";

  void eat() {
    print("Animal is eating.");
  }
}

class Dog extends Animal {
  
  String color = "Black";

  String bark() {
    return "wooooff";
  }

  // Overriding the eat() method
  void eat() {
    super.eat();
    print("Dog is eating");
  }
}
