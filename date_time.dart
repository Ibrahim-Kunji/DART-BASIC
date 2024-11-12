void main() {
// creating current Date and Time:
  print("\n");
  
  DateTime now = DateTime.now();
  print(now); // Prints current date and time

  print("\n");

  // creating a specific Date and time
  DateTime specificDate = DateTime(2024, 12, 25, 10, 30, 24);
  print(specificDate); //

  print("\n");
  // Duration
  Duration duration = Duration(days: 1, hours: 2, minutes: 30, seconds: 20);
  print("Duration: $duration\n");
}
