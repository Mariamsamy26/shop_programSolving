class Product {
  late String name;
  late double price;
  late double discountPercentage;
  late int quantity;
  late int id;

  Product({
    this.name = '',
    this.price = 0.0,
    this.discountPercentage = 0.0,
    this.quantity = 1,
    this.id=1,
  });


  double priceAfterDiscount(double price ,double discountPercentage) {
    discountPercentage=price - (price * discountPercentage / 100);
    return  discountPercentage;
  }

}