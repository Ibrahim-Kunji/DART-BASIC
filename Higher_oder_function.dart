void main() {
  //example 1:  passing function to Higher Order dunction

  Function addNumber = (a, b) => print(a + b);
  someOtherFunction("Hello", addNumber);

  //example 2: Receiving function from Higher Order funtion
  var myFunc = taskToperform();
  print(myFunc(5)); //multiplyBy4(5) //number *4 //5*4 // output = 20
}

Function addNumbers = (int x, int y) => print(x + y);
// example 1: Accept function as a parameter
void someOtherFunction(String msg, Function myfunction) {   // Higher Order function

  myfunction(2, 4); //addNumber(2,4) //print(a+b) //output = 6
  print(msg);
}

// example 2: Return a function
Function taskToperform() {
  Function multiplyBy4 = (number) => number * 4;
  return multiplyBy4;
}
