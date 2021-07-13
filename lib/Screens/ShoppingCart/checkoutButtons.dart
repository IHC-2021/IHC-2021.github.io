import 'package:flutter/material.dart';

class CheckoutButtons extends StatefulWidget {
  const CheckoutButtons({Key? key}) : super(key: key);

  @override
  _CheckoutButtonsState createState() => _CheckoutButtonsState();
}

class _CheckoutButtonsState extends State<CheckoutButtons> {
  Widget button(bool isFirst, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(3),
      color: Colors.green,
      child: TextButton(
        onPressed: () {},
        child: Container(
            color: isFirst ? Colors.white : Colors.green, child: Text(text)),
      ),
    );
  }

  Widget twoButtons() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          button(true, 'Continuar Comprando'),
          button(false, 'Finalizar Compra'),
        ],
      ),
    );
  }

  Widget cornerValues() {
    return Column(
      children: [
        Text('Subtotal: sad'),
        Text('Subtotal: sad'),
        Text('Subtotal: sad'),
        Text('Subtotal: sad'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          twoButtons(),
          Spacer(),
          cornerValues(),
        ],
      ),
    );
  }
}
