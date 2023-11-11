import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:order/order.dart';

class AddressTile extends StatelessWidget {
  final bool isSelected;
  final AddressModel data;
  final VoidCallback onTap;
  final VoidCallback onEditTap;
  final VoidCallback onDeleteTap;

  const AddressTile({
    super.key,
    this.isSelected = false,
    required this.data,
    required this.onTap,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(
              color: isSelected ? ColorName.primary : ColorName.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            16.sbh,
            Text(
              data.address,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            16.sbh,
            Text(
              data.phoneNumber,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            16.sbh,
            Row(
              children: [
                Button.filled(
                  onPressed: onEditTap,
                  label: 'Edit',
                  width: 80.0,
                ),
                16.sbw,
                IconButton(
                  onPressed: onDeleteTap,
                  icon: const ImageIcon(
                    AssetImage('assets/icons/Trash.png'),
                    color: ColorName.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
