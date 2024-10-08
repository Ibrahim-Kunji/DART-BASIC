// Required parameters
// optional positional parameters

void main() {
  studentsName("Ibrahim", "Usman", "Kunji");
  print("");
  city("Gombe", "Kano");
}

// Required parameters
void studentsName(String name1, String name2, String name3) {
  print("My name is $name1");
  print("My name is $name2");
  print("My name is $name3");
}

// optional positional parameters
void city(String city1, String city2, [String? city3]) {
  print("I'm from $city1 State");
  print("I'm from $city2 State");
  print("I'm from $city3 State");
}
