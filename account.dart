class BankAccount {
  double _amount = 0.0;

  double get amount {
    return _amount;
  }

  set amount(double value) {
    if (value >= 0) {
      _amount = value;
    } else {
      print("Amount cannot be negative!");
    }
  }

  void deposit(double value) {
    if (value > 0) {
      _amount += value;
      print("Deposited: Rs${value}");
    } else {
      print("Deposit amount must be positive!");
    }
  }

  void withdraw(double value) {
    if (value > 0 && value <= _amount) {
      _amount -= value;
      print("Withdrawn: Rs${value}");
    } else {
      print("Invalid withdrawal amount!");
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  // Set initial balance
  account.amount = 500;

  print("Current balance: Rs${account.amount}");

  account.deposit(200);
  print("Current balance: Rs${account.amount}");

  account.withdraw(100);
  print("Current balance: Rs${account.amount}");

  account.amount = -50; // Invalid, will show error
}
