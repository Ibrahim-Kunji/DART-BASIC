import "dart:math";

void main() {
  //Basic Mathematical Functions

  var sqr = 70;
  var r = sqrt(sqr);
  print(r.toStringAsFixed(4));

  var x = 2;
  var power = pow(x, 2);
  print(power);

  var logs = log(x);
  print(logs);

  //Rounding and Absolute Value
  int num1 = 2, num2 = 4;

  var maximu = max(num1, num2);
  var minimum = min(num1, num2);

  print("The smaller number num2 between $num1 and $num2 is ${minimum}");
  print("The larger number num2  between $num1 and $num2 is ${maximu}");

  var a = 3.55;
  var b = 3.11;
  var c = -5;

// rounding of a number
  print(a.round()); //output = 4
  print(b.round()); //output = 3

// absolute

  print(c.abs()); //output = 5

// floor
  print(a.floor()); // output = 3
  print(b.floor()); // output = 3

// Ceil
  print(a.ceil()); //output = 4
  print(b.ceil()); //output = 4

// truncate
  print(a.truncate()); //output = 3

  // Create a Random object
  var random = Random();
  var guess = 7;
  //Generate a random integer from 0 up to (but not including) 10
  int randomInt = random.nextInt(10);
  if (guess == randomInt) {
    print('Congratulation you Win!');
  } else if (guess != randomInt) {
    print("Hhhhhhh, you fail");
    print("\n");
    print("The correct answer is ${randomInt}");
  }

  // Generate a random double between 0.0 and 1.0
  double randomDouble = random.nextDouble();
  print('Random double (0.0-1.0): $randomDouble');

  // Generate a random boolean value (true or false)
  bool randomBool = random.nextBool();
  print('Random boolean: $randomBool');
}
