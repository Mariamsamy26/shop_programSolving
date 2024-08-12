import 'dart:io';

import '../prosedects.dart';

class ShopCart {
  late List<Product> ProductsCar;
  late double total, totalD;

  ShopCart({
    required this.ProductsCar,
    this.total = 0.0,
    this.totalD = 0.0,
  });

  List<Product> addProduct({
    required int numProduct,
    required List<Product> ProductsCar,
    required List<Product> Products,
  }) {
    for (int i = 0; i < numProduct; i++) {
      print("Enter the ID of Product ${i + 1}:");
      int idProduct = int.parse(stdin.readLineSync()!);

      // Validate idProduct
      if (idProduct < 0 || idProduct >= Products.length) {
        print("Invalid product ID. Please try again.");
        i--; // Retry this iteration
        continue;
      }

      print("Enter quantity for Product ${Products[idProduct].name}:");
      int quantity = int.parse(stdin.readLineSync()!);
      ProductsCar.add(Product(
        name: Products[idProduct].name,
        price: (Products[idProduct].price) * quantity,
        discountPercentage: (Products[idProduct].discountPercentage) * quantity,
        quantity: quantity,
      ));
      print("Products are add");
      Products[idProduct].quantity-=quantity;
      total +=ProductsCar[i].price;
      totalD +=ProductsCar[i].discountPercentage;
    }
    return ProductsCar;
  }

  List<Product> removeProduct({
    required String nameProduct,
    required List<Product> ProductsCar,
    required List<Product> Products,
    required int quantity,
  }) {
    for (int i = 0; i < ProductsCar.length; i++) {
      if (ProductsCar[i].name.toLowerCase() == nameProduct.toLowerCase()) {
        ProductsCar.remove(Product(
          name: ProductsCar[i].name,
          price: ProductsCar[i].price,
          discountPercentage: ProductsCar[i].discountPercentage,
          quantity: quantity,
        ));
        //Products[i].quantity+=quantity;
        total -=ProductsCar[i].price;
        totalD -=ProductsCar[i].discountPercentage;
        print("Product${ProductsCar[i].name} is remove");

      }else print("sorry $nameProduct is not in cart ");
    }
    return ProductsCar;
  }

  double totalPrice() {
    print("total price is $total");
    return total;
  }

  double totalPriceAfterD() {
    print("total price is after discount $totalD");
    return totalD;
  }
}
