import 'package:shop_dart/prosedects.dart';

class Admin {
  List<Product> products = [
    Product(name: "aa", price: 500, discountPercentage: 20, quantity: 50),
    Product(name: "mm", price: 500, discountPercentage: 20, quantity: 50),
    Product(name: "kk", price: 500, discountPercentage: 20, quantity: 50),
  ];

  // Add product to website method
  String addProduct(Product product) {
    products.add(product);
    return 'Product added: ${product.name}, '
        'Quantity: ${product.quantity},'
        ' Price: ${product.price},'
        ' Discount: ${product.discountPercentage}%';
  }

  // Remove product method (without using removeWhere)
  String removeProduct(String productName) {
    for (int i = 0; i < products.length; i++) {
      if (products[i].name == productName) {
        products.removeAt(i);
        return 'Product removed: $productName';
      }
    }
    return 'Product not found: $productName';
  }

  // Search by product name method
  int searchByProductName(String productName) {
    for (int i = 0; i < products.length; i++) {
      if (products[i].name == productName) {
        return i;
      }
    }
    return -1; // return -1 if not found
  }

  // Search by price method (prints a list of products with the same price)
  void searchByPrice(double price) {
    bool found = false;
    for (var product in products) {
      if (product.price == price) {
        found = true;
        print(product);
      }
    }
    if (!found) {
      print('No products found with the price: $price');
    }
  }
}
