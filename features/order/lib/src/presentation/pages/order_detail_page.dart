import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:order/order.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  final List<OrderProductModel> products = [
    OrderProductModel(
      imagePath: MainAssets.product1,
      name: 'Tas Kekinian',
      price: 200000,
    ),
    OrderProductModel(
      imagePath: MainAssets.product2,
      name: 'Earphone',
      price: 199999,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.primary,
        title: const Text('Detail Pesanan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const OrderStatus(
            status: ['Pending', 'Dikemas', 'Dikirim'],
          ),
          24.sbh,
          const Text(
            'Produk',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          14.sbh,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) => OrderProductTile(
              data: products[index],
            ),
          ),
          24.sbh,
          const Text(
            'Detail Pengiriman',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          14.sbh,
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(color: ColorName.border),
            ),
            child: Column(
              children: [
                RowText(
                  label: 'Waktu Pengiriman',
                  value: DateTime.now().toString(),
                ),
                12.sbh,
                const RowText(
                  label: 'Ekspedisi Pengiriman',
                  value: 'JNE Regular',
                ),
                12.sbh,
                const RowText(
                  label: 'No. Resi',
                  value: 'QQNSU346JK',
                ),
                12.sbh,
                const RowText(
                  label: 'Alamat',
                  value: 'Jalan suka cita no 12',
                ),
              ],
            ),
          ),
          24.sbh,
          const Text(
            'Detail Pembayaran',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          14.sbh,
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(color: ColorName.border),
            ),
            child: Column(
              children: [
                RowText(
                  label: 'Item (2)',
                  value: 1900000.currencyFormatRp,
                ),
                12.sbh,
                RowText(
                  label: 'Ongkir',
                  value: 120000.currencyFormatRp,
                ),
                12.sbh,
                RowText(
                  label: 'Total ',
                  value: 2020000.currencyFormatRp,
                  valueColor: ColorName.primary,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
