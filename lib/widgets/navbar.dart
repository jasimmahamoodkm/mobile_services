import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Dashboard", "Sales", "Stock", "Products", "Customers"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(padding: EdgeInsets.only(left: 10), child: Text(text));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [...navItem()],
      ),
    );
  }
}
