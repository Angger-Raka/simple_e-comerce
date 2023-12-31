import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 160,
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=3',
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              MainAssets.iconUser,
              width: 24.0,
            ),
            title: Text(
              l10n.profile,
              style: const TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              context.push(NamedRoutes.profile);
            },
          ),
          ListTile(
            leading: Image.asset(
              MainAssets.iconBag,
              width: 24.0,
            ),
            title: Text(
              l10n.order,
              style: const TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              context.push(NamedRoutes.order);
            },
          ),
          ListTile(
            leading: Image.asset(
              MainAssets.iconLocation,
              width: 24.0,
            ),
            title: Text(
              l10n.address,
              style: const TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              context.push(NamedRoutes.shippingAddress);
            },
          ),
        ],
      ),
    );
  }
}
