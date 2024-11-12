import 'dart:io';

class Calculator {
  // Constructor to accept two numbers
  double number1;
  double number2;

  Calculator(this.number1, this.number2);

  // Method for addition
  double add() {
    return number1 + number2;
  }

  // Method for subtraction
  double subtract() {
    return number1 - number2;
  }

  // Method for multiplication
  double multiply() {
    return number1 * number2;
  }

  // Method for division
  double divide() {
    if (number2 != 0) {
      return number1 / number2;
    } else {
      print("Error: Division by zero is not allowed.");
      return double.nan;
    }
  }
}

void main() {
  // Taking input from the user
  print("CALCULATOR\n");

  stdout.write("Enter the first number:");
  double? num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number:");
  double? num2 = double.parse(stdin.readLineSync()!);
  print("\n");
  print("RESULT:");

  // Creating an instance of the Calculator class
  Calculator calculator = Calculator(num1, num2);

  // Performing the operations
  print("Addition: ${calculator.add()}");
  print("Subtraction: ${calculator.subtract()}");
  print("Multiplication: ${calculator.multiply()}");
  double divisionResult = calculator.divide();
  if (!divisionResult.isNaN) {
    print("Division: $divisionResult");
  }
}
