import 'package:home/home.dart';

mixin HomeDataSource {
  Future<ResponseListProduct> getAllProducts();
  Future<ResponseListCategory> getAllCategories();
  Future<ResponseListAddress> getAllAddress();
}
