import 'dart:io';

import 'package:shop_dart/admin.dart';
import 'package:shop_dart/prosedects.dart';
import 'package:shop_dart/shop_cart.dart';

class Users {
  late String name, email;
  late ShopCart cart = ShopCart(ProductsCar: []);

  Users({
    this.name = "",
    this.email = '',
  });

  String printProduct(List<Product> p) {
    for (int i = 0; i < p.length; i++) {
      print('prdect name is ${p[i].name}\t' +
          'prdect price is ${p[i].price}\t' +
          'prdect discount Percentage is ${p[i].discountPercentage}\t' +
          'prdect quantity is ${p[i].quantity}\t' +
          'prdect id is $i\t');
    }
    return "p";
  }
}


