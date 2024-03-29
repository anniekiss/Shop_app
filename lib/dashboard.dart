import 'package:flutter/material.dart';
import 'package:shop_app/category.dart';
import 'package:shop_app/checkout.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedTab = 0;

  _changeTab(index) {
    setState(() {
      _selectedTab = index;
    });
  }

  final List _pages = [
    CategoryScreen(),
    CheckoutScreen(),
    const Center(
      child: Text('Profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (value) => _changeTab(value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
