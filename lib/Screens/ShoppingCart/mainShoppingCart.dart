import 'package:final_project_uiux/Screens/ShoppingCart/banner.dart';
import 'package:final_project_uiux/Screens/ShoppingCart/checkoutButtons.dart';
import 'package:final_project_uiux/Screens/ShoppingCart/checkoutProducts.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.purpleAccent,
      child: Column(
        children: [
          CheckoutBanner(),
          CheckoutProducts(),
          CheckoutButtons(),
        ],
      ),
    );
  }
}
