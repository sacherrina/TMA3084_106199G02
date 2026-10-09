import 'dart:io';
void main() {
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');
  String pizzaSize = '';
  int price = 0;

  while (pizzaSize != 'small' &&
      pizzaSize != 'medium' &&
      pizzaSize != 'large') {
    print('Please enter your pizza size (small, medium, or large):');
    pizzaSize = stdin.readLineSync()!.toLowerCase();

    switch (pizzaSize) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size! Please try again.');
    }
  }
  print('How many pizzas do you want of $pizzaSize?');
  int quantity = int.parse(stdin.readLineSync()!);
  int totalPayment = price * quantity;
  print('Your Total Payment is: \$$totalPayment');
}