void main() {
  // conditional expression
  //1. condition ? exp1 : exp2;
  int a = 6;
  int b = 4;
  int larger;

  a > b ? larger = a : larger = b;
  print("$larger is larger");

  // 2. exp1 ?? exp2
  String name = "Kunji";
  String check = name ?? "Guest user";
  print(check);
}
