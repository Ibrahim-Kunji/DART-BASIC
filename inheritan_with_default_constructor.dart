void main() {
  var car1 = Toyota("Camry", "red");
  print("");

  var car2 = Toyota("Corolla", "white");
  print("");

  var car3 = Toyota.myNamedConstructor("Land Cruiser", "green");
}

class Car {
  String color = "";

  // Parameterized constructor
  Car(String color) {
    this.color = color;
    print("Car class constructor, color: $color");
  }

  // Named constructor
  Car.namedCarConstructor(String color) {
    this.color = color;
    print("Car named constructor, color: $color");
  }
}

class Toyota extends Car {
  String model = "";

  // Inheritance with a parameterized constructor
  Toyota(String model, String color) : super(color) {
    this.model = model;
    print("Toyota class constructor, model: $model, color: $color");
  }

  // Named constructor in Toyota class
  Toyota.myNamedConstructor(String model, String color) : super.namedCarConstructor(color) {
    this.model = model;
    print("Toyota named constructor, model: $model, color: $color");
  }
}
