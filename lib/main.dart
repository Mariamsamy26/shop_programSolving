import 'dart:io';

import 'package:shop_dart/uers.dart';

import 'admin.dart';

main() {
  Users userr = Users();
  Admin a = Admin();
  print("User mode selected.");
  while (true) {
    print("\n user mood :");
    print("1. Add Product to Cart");
    print("2. Remove Product from Cart");
    print("3. View Total Price");
    print("4. View Total Price After Discount");
    print("5. View Cart");
    print("6. Exit");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1': // Add
        print(userr.printProduct(a.products)); //print list from admin

        print("Enter number of products to add: ");
        int numProduct = int.parse(stdin.readLineSync()!);
        userr.cart.addProduct(
            numProduct: numProduct,
            ProductsCar: userr.cart.ProductsCar,
            Products: a.products);
        break;

      case '2': //remove
        print("Enter name prodect you need remove : ");
        String nameRemove = stdin.readLineSync()!;
        print("Enter number of products to remove: ");
        int quantity = int.parse(stdin.readLineSync()!);
        userr.cart.removeProduct(
            nameProduct: nameRemove,
            ProductsCar: userr.cart.ProductsCar,
            Products: a.products,
            quantity: quantity);
        break;

      case '3': //total
        userr.cart.totalPrice();
        break;

      case '4': //total Discount
        userr.cart.totalPriceAfterD();
        break;

      case '5': //print cart
        userr.printProduct(userr.cart.ProductsCar);
        break;

      case '6':
        return;
    }
  }
}
