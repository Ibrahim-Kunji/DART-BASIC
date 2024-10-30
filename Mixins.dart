mixin BMI {
  double calculateBMI(double weight, double height) {
    return weight / (height * height);
  }
}

class Person with BMI {
  Person({required this.name,required this.age,required this.height,required this.weight});
  final String name;
  final int age;
  final double height;
  final double weight;

  double get bmi => calculateBMI(weight, height);
}

void main() {
  final person1 = Person(name: "Musa", age: 20, height: 1.92, weight: 500.0);
  print(person1.name);

  print(person1.bmi);
}
