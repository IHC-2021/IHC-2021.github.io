import 'package:flutter/material.dart';

class CheckoutProducts extends StatefulWidget {
  const CheckoutProducts({Key? key}) : super(key: key);

  @override
  _CheckoutProductsState createState() => _CheckoutProductsState();
}

class _CheckoutProductsState extends State<CheckoutProducts> {
  Widget bananaExample() {
    return Container(
      color: Colors.grey,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(height: 80, image: AssetImage('assets/banana.jpg')),
          Column(
            children: [
              Text('abanana'),
              Text('R\$ 23,32'),
            ],
          ),
          Text('-'),
          Text('1'),
          Text('+'),
          Text('Unidade(s)'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          bananaExample(),
          bananaExample(),
          bananaExample(),
        ],
      ),
    );
  }
}
