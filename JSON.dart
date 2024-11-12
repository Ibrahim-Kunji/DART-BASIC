import 'dart:convert';

void main() {
  // JSON string
  String jsonString = '{"name": "Alice", "age": 25, "isStudent": false}';

  // Decode JSON to a Map
  Map<String, dynamic> user = jsonDecode(jsonString);
  for (var x in user.values) {
    print(x);
  }

  user.forEach((key, value) => print("$key = $value"));

  // Encode Map to JSON

  Map<String, dynamic> jsonMap = {'Name': 'Aliyu', 'Age': 30};

  String users = jsonEncode(jsonMap);
  print(users);
}
