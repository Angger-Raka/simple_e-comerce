import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:order/order.dart';

class OrderCard extends StatelessWidget {
  final TransactionModel data;
  const OrderCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const OrderDetailPage()),
        // );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: ColorName.border),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NO RESI: ${data.noResi}',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Button.filled(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const ManifestDeliveryPage()),
                    // );
                  },
                  label: 'Lacak',
                  height: 20.0,
                  width: 94.0,
                  fontSize: 11.0,
                ),
              ],
            ),
            24.sbh,
            RowText(label: 'Status', value: data.status),
            12.sbh,
            RowText(label: 'Item', value: data.item),
            12.sbh,
            RowText(label: 'Harga', value: data.priceFormat),
          ],
        ),
      ),
    );
  }
}
