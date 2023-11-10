import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              MainAssets.iconUser,
              width: 24.0,
            ),
            title: const Text(
              'Profil',
              style: TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ProfilePage()),
              // );
            },
          ),
          ListTile(
            leading: Image.asset(
              MainAssets.iconBag,
              width: 24.0,
            ),
            title: const Text(
              'Pesanan',
              style: TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const OrderPage()),
              // );
            },
          ),
          ListTile(
            leading: Image.asset(
              MainAssets.iconLocation,
              width: 24.0,
            ),
            title: const Text(
              'Alamat',
              style: TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              // MaterialPageRoute(
              //     builder: (context) => const ShippingAddressPage()),
              // );
            },
          ),
        ],
      ),
    );
  }
}
