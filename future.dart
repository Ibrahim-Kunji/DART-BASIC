import 'dart:async';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data loaded!";
}

void main() async {
  print("Loading.......");
  String data = await fetchData();
  print(data);
}
