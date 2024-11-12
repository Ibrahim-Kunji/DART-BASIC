void main() {
  var dog = Dog();
  dog.color = "black";
  dog.breed = "breed";

  print("The color of my dog is ${dog.color}");
  print("My dog can ${dog.breed}");
  print("my dog can ${dog.eat()}");
  
  print("my dog says: ${dog.bark()}");
  

  var cat = Cat();

  cat.color = "brown";
  cat.age = 2;
  cat.meow();

  print("The color of my cat is ${cat.color}");
  print("My cat is ${cat.age} years old");
  print("my cat can ${cat.eat()}");
  
  print("my cat says:${cat.meow()} ");
  

  var animal = Animal();
  animal.color = "color";
  animal.eat();
  print("All animals can ${animal.eat()} ");
}

class Animal {
  String color = "";

  String  eat() {
    return "eat!";
  }
}

class Dog extends Animal {
  String breed = "";

  String bark() {
    return "woofff!";
  }
}

class Cat extends Animal {
  int age = 0;

  String meow() {
    return "Meoww!";
  }
}
