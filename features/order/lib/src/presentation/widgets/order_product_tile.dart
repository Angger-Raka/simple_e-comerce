import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:order/order.dart';

class OrderProductTile extends StatelessWidget {
  final OrderProductModel data;
  const OrderProductTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: ColorName.border),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.asset(
              data.imagePath,
              width: 72.0,
              height: 72.0,
              fit: BoxFit.cover,
            ),
          ),
          12.sbh,
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                20.sbh,
                Text(
                  data.priceFormat,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: ColorName.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
