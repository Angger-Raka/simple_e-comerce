import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CartScreen(),
    const AccountScreen(),
    // const Center(
    //   child: Text('Explore Page'),
    // ),
    // const Center(child: Text('Cart Page')),
    // const Center(child: Text('Account Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: ColorName.primary,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: const ImageIcon(
              AssetImage(MainAssets.iconHome),
            ),
            label: l10n.home,
          ),
          // BottomNavigationBarItem(
          //   icon: ImageIcon(AssetImage(Images.iconSearch),),
          //   label: 'Explore',
          // ),
          BottomNavigationBarItem(
            icon: const ImageIcon(
              AssetImage(MainAssets.iconCart),
            ),
            label: l10n.cart,
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(
              AssetImage(MainAssets.iconUser),
            ),
            label: l10n.account,
          ),
        ],
      ),
    );
  }
}
