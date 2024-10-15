void main() {
  var car1 = Toyota("Camry", "red");

  print("");

  var car2 = Toyota("Corolla", "white");

  print("");

  var car3 = Toyota.myNamedConstructor("Land Cruiser", "green");
}

class Car {
  String color = "";

  Car(String color) {
    this.color = color;
    print("Car class constructor");
  }
  Car.namedCarConstructor(){
    print("Car named  constructor");

  }

}

class Toyota extends Car {
  String model = "";
  // inheritance with and parameterized constructor
  Toyota(String model, String color):super(color){
    this.model = model;

    print("Toyota class constructor");
  }

  Toyota.myNamedConstructor(String model, String color) : super.namedCarConstructor() {
    print("Toyota named constructor");
  }
}
