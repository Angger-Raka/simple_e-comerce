import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Cart data;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
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
              widget.data.imagePath,
              width: 72.0,
              height: 72.0,
              fit: BoxFit.cover,
            ),
          ),
          12.sbh,
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sepatu Nike",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const ImageIcon(
                        AssetImage(MainAssets.iconTrash),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                20.sbh,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.data.priceFormat,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: ColorName.primary,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(1.0),
                      decoration: const BoxDecoration(
                        color: ColorName.border,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: StatefulBuilder(
                        builder: (context, setState) => Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (widget.data.quantity > 0) {
                                  widget.data.quantity--;
                                  setState(() {});
                                }
                              },
                              child: Container(
                                color: ColorName.white,
                                child: const Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(
                              width: 40.0,
                              child: Center(
                                child: Text(widget.data.quantity.toString()),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                widget.data.quantity++;
                                setState(() {});
                              },
                              child: Container(
                                color: ColorName.white,
                                child: const Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
