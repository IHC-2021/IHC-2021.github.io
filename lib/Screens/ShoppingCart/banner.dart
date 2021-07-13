import 'package:flutter/material.dart';

class CheckoutBanner extends StatelessWidget {
  const CheckoutBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      width: double.maxFinite,
      color: Colors.purple,
      child: Text('Carrinho de compras'),
    );
  }
}
