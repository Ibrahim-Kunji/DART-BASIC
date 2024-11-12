void main() {
  // exeption handling

  print("Case 1, Using 'On Clause'");
  // when you know the exception to be thrown, use On Clause
  try {
    int result = 12 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  }

  print("");
  ("Case 2, Using 'Catch Clause'");
  // when you do not know the exception, use Catch Clause
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (e) {
    print("The exception thrown is  $e");
  }

  print("");
  ("Case 3, Using 'STACK TRACE'");
  //Using STACK TRACE to know the event occured before the exception was thrown
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (e, s) {
    print("The exception thrown is  $e");
    print("STACK TRACE\n $s");
  }

  print("");
  ("Case 4, Using 'FINALLY CLAUSE'");
  // whether there is exception or not, FINALLY clause is always executed
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (e) {
    print("The exception thrown is  $e");
  } finally {
    print("This is FINALLY clause and is always executed.");
  }
}
