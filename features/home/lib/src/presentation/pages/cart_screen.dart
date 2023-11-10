import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Cart> carts = [
    Cart(
      imagePath: MainAssets.product1,
      name: 'Tas Kekinian',
      price: 200000,
    ),
    Cart(
      imagePath: MainAssets.product2,
      name: 'Earphone',
      price: 199999,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          if (carts.isEmpty)
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  children: [
                    const Text(
                      'Oppsss..\nKeranjang Anda kosong nih!',
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                    20.sbh,
                    Button.filled(
                      width: 120.0,
                      height: 40.0,
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      label: 'Cari yuk',
                    ),
                  ],
                ),
              ),
            ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 16.sbh,
            itemCount: carts.length,
            itemBuilder: (context, index) {
              return CartItemWidget(
                data: carts[index],
              );
            },
          ),
          if (carts.isNotEmpty) 16.sbh,
          //button for choose shipping address
          if (carts.isNotEmpty)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Button.filled(
                width: 60,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const ShippingAddressPage()),
                  // );
                },
                label: 'Pilih Alamat Pengiriman',
              ),
            ),
          16.sbh,
          // show alamat pengiriman
          if (carts.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: ColorName.border),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alamat Pengiriman',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  16.sbh,
                  const Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  8.sbh,
                  const Text(
                    'Alamat Lengkap',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  8.sbh,
                  const Text(
                    'Kota, Provinsi, Kode Pos',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                  8.sbh,
                  const Text(
                    'No Handphone',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorName.grey,
                    ),
                  ),
                ],
              ),
            ),
          16.sbh,
          //container for dropdown courier
          if (carts.isNotEmpty)
            Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(color: ColorName.border),
                ),
                child: CustomDropdown(
                  value: 'JNE',
                  items: ['JNE', 'J&T'],
                  label: 'Kurir',
                  onChanged: (value) {},
                )),
          if (carts.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: ColorName.border),
              ),
              child: Column(
                children: [
                  RowText(
                    label: 'Item (${carts.length})',
                    value: 1750000.currencyFormatRp,
                  ),
                  12.sbh,
                  const RowText(
                    label: 'Biaya Pengiriman',
                    value: 'Rp 22.000', //150000.currencyFormatRp,
                  ),
                  40.sbh,
                  const Divider(color: ColorName.border),
                  12.sbh,
                  RowText(
                    label: 'Total Harga',
                    value: 1750000.currencyFormatRp,
                    valueColor: ColorName.primary,
                    fontWeight: FontWeight.w700,
                  ),
                  16.sbh,
                  Button.filled(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const PaymentPage(
                      //             url: '',
                      //           )),
                      // );
                    },
                    label: 'Bayar Sekarang',
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
