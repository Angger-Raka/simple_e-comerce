import 'package:core/core.dart';

class Cart {
  final String imagePath;
  final String name;
  final int price;
  int quantity;

  Cart({
    required this.imagePath,
    required this.name,
    required this.price,
    this.quantity = 0,
  });

  String get priceFormat => price.currencyFormatRp;
}
