void main() {
  Map<String, int> countryDialingCode = {
    //1. using  literals
    "Nigeria": 234,
    "USA": 1,
    "India": 91
  };
  countryDialingCode.forEach(
      (key, value) => print("The country dialing code of $key is +$value"));

  print("\n");
  Map<String, String> fruits = Map(); // 2. map using constructor
  fruits["Apple"] = "red";
  fruits["Banana"] = "yellow";
  fruits["Mango"] = "green";
  fruits["Orange"] = "orange";

  //operation
  fruits.update("Banana", (i) => "green");
  fruits.updateAll((key, value) => value.toUpperCase());

  fruits.containsKey("Apple");
  print(fruits.length);
  fruits.remove("Orange");
  //fruits.clear();

  //print(fruits["Apple"]);

  for (var key in fruits.keys) {
    print(key);
  }
  print("\n");

  fruits.forEach((key, value) => print("key:$key and value:$value"));
}
