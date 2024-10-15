void main() {
  // custom exception
  try {
    depositMoney(-400000);
  } catch (e) {
    if (e is DepositException) {
      print(e.errorMessage());
    }
  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositException();
  } else {
    print("You deposited \$${amount} successful!");
  }
}
