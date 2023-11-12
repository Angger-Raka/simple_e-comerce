import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:order/order.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<TransactionModel> transactions = [
    TransactionModel(
      noResi: 'QQNSU346JK',
      status: 'Dikirim',
      quantity: 2,
      price: 1900000,
    ),
    TransactionModel(
      noResi: 'SDG1345KJD',
      status: 'Diterima',
      quantity: 2,
      price: 900000,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.primary,
        title: const Text('Pesanan'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (context, index) => 16.sbh,
        itemCount: transactions.length,
        itemBuilder: (context, index) => OrderCard(
          data: transactions[index],
        ),
      ),
    );
  }
}
