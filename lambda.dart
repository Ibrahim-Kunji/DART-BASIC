// Lambda function
void main() {
  // 1. first way
  // Define an anonymous function and assign it to 'addition'
  Function addition = (int a, int b) {
    var sum = a + b;
    print(sum);
  };

  // Call the function with arguments
  addition(5, 3); // Output: 8

  var multiplyBy4 = (int num) {
    return num * 4;
  };
  int result = multiplyBy4(2);
  print(result);

  // 2. second way: function expression using shorthand syntax or Fat arrow
  Function subtraction = (int a, int b)=>print(a-b);

  subtraction(4, 2);
}
