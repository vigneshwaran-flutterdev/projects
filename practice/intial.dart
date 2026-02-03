import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learning/cartpage.dart';
import 'package:learning/homepage.dart';

class IntialPage extends StatefulWidget {
  const IntialPage({super.key});

  @override
  State<IntialPage> createState() => _IntialPageState();
}

class _IntialPageState extends State<IntialPage> {
  final GlobalKey<CurvedNavigationBarState> _globalKey = GlobalKey();
  final items = <Widget>[
    Icon(Icons.home, size: 20),
    Icon(Icons.shopping_cart_rounded, size: 20),
  ];
  final List<Widget> p = [
    HomePage(),
    CartPage(),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: p[_index],
      bottomNavigationBar: CurvedNavigationBar(
          index: _index,
          key: _globalKey,
          items: items,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          }),
    );
  }
}
