import 'package:order/order.dart';

class OrderDataSourcesImpl implements OrderDataSources {
  OrderDataSourcesImpl(this.datasources);

  final OrderDataSources datasources;
}
