void main() {
  Set<int> numbers = Set.from([1, 2, 3, 4]);

  Set<String> state = Set.from([]);
  state.add("Gombe");
  state.add("Kano");

  var x = state.contains("Gombe");
  var y = state.isEmpty;
  state.forEach((city) => print(city));
  print(x);
  print(y);
  print("\n");

  for (int i in numbers) {
    print(i);
  }
  print("\n");
  numbers.add(4);
  numbers.add(5);

  numbers.remove(2);
  //numbers.clear();

  numbers.forEach((element) => print(element));

  print("\n");
}
