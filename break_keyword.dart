void main() {
  //break keyword
  // using labels

  /*
  for (int x = 1; x < 20; x++) {
    if (x== 10) {
      break;
    }
    print(x);
  }
  */

  outerloop: for (int i = 1; i <= 3; i++) {
     for (int j = 1; j <= 3; j++) {
      print("$i $j");

      if (i == 2 && j == 2) {
        break outerloop;
      }
    }
  }
}
