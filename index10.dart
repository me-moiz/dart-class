import 'dart:io';

void main() {
  List<String> menu = ['Burger', 'Pizza', 'Pasta', 'Fries', 'Coke'];
  List<String> order = [];
  bool running = true;

  while (running) {
    print('\n===== 🍔 FOOD ORDER SYSTEM =====');
    print('1. View Menu');
    print('2. Add Food to Order');
    print('3. View My Order');
    print('4. Remove Food from Order');
    print('5. Exit');
    stdout.write('\nEnter your choice: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        viewMenu(menu);
        break;
      case '2':
        addFood(menu, order);
        break;
      case '3':
        viewOrder(order);
        break;
      case '4':
        removeFood(order);
        break;
      case '5':
        print('\n👋 Exiting Food Order System. Enjoy your meal!');
        running = false;
        break;
      default:
        print('\n⚠️ Invalid choice! Please enter a number (1-5).');
    }
  }
}

void viewMenu(List<String> menu) {
  print('\n🍽️ Available Menu Items:\n');
  for (int i = 0; i < menu.length; i++) {
    print('${i + 1}. ${menu[i]}');
  }
}

void addFood(List<String> menu, List<String> order) {
  viewMenu(menu);
  stdout.write('\nSelect a food number to add (1-${menu.length}): ');
  String? input = stdin.readLineSync();
  int? choice = int.tryParse(input ?? '');

  if (choice != null && choice > 0 && choice <= menu.length) {
    order.add(menu[choice - 1]);
    print("\n✅ '${menu[choice - 1]}' added to your order!");
  } else {
    print('\n⚠️ Invalid selection! Please try again.');
  }
}

void viewOrder(List<String> order) {
  if (order.isEmpty) {
    print('\n🧾 Your order is currently empty.');
  } else {
    print('\n🧾 Your Current Order:\n');
    for (int i = 0; i < order.length; i++) {
      print('${i + 1}. ${order[i]}');
    }
  }
}

void removeFood(List<String> order) {
  if (order.isEmpty) {
    print('\n⚠️ Your order is empty! Nothing to remove.');
    return;
  }

  print('\nSelect food number to remove:\n');
  for (int i = 0; i < order.length; i++) {
    print('${i + 1}. ${order[i]}');
  }

  stdout.write('\nEnter number: ');
  String? input = stdin.readLineSync();
  int? choice = int.tryParse(input ?? '');

  if (choice != null && choice > 0 && choice <= order.length) {
    String removed = order.removeAt(choice - 1);
    print("\n❌ '$removed' removed from your order.");
  } else {
    print('\n⚠️ Invalid selection! Please try again.');
  }
}
