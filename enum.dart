// Define the enum
enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum NetworkError { badURL, timeout, resourceNotAvailable }


void main() {
  printError(NetworkError.resourceNotAvailable); 

/*
  // Access a specific value
  Day today = Day.Monday;

  // Print the enum value
  print("Today is $today");

  // Loop through all values of the enum
  for (var day in Day.values) {
    print(day);
  }
*/
}

void printError(NetworkError error) {
  if (error == NetworkError.badURL) {
    print("bad url");
  } else if (error == NetworkError.timeout) {
    print("timeout");
  } else if (error == NetworkError.resourceNotAvailable) {
    print("resource not available");
  }
}

