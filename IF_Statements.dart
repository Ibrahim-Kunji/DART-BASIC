void main() {
  var name = "Usman";
  var salary = 200000;
/*
  if (salary >= 200000) {
    print("Dear $name You got promotion. Congratulation! ");
  } else {
    print("Ohh! $name you need to work hard!");
  }
*/
  // program for finding grade using if  else if ladder  statements
  double score = 95;

  if (score >= 80 && score <= 100) {
    print("congrats! you got A+");
  }
  else if (score >= 70 && score < 80){
    print("congrats! you got A");
  }
  else if (score >= 60 && score < 70){
    print("congrats! you got B");
  }
  else if (score >= 50 && score < 60){
    print("congrats! you got C");
  }
  else if (score >= 45 && score < 50){
    print("congrats! you got D");
  }
  else if (score >= 40 && score < 45){
    print("Ops! you got E");
  }
  else if (score >=0  && score < 40){
    print("Hhhhhh! you have Failed");
  }
  else{
    print("invalid input!. please try again! ");
  }
}