import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  Widget logo() {
    return Image(
      height: 110,
      width: 90,
      image: AssetImage('assets/logo.jpeg'),
    );
  }

  Widget searchbar() {
    return Container(
      width: 312,
      height: 50,
      padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.10),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Center(
        child: Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search),
              Text(
                'Pesquisa...',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black38),
              ),
              // Container(width: 10, color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }

  Widget location() {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      onPressed: () => log('location'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('São Carlos - SP'),
          Icon(Icons.location_city),
        ],
      ),
    );
  }

  Widget shoppingCart() {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      onPressed: () => changeScreen('carrinho'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Carrinho'),
          Icon(Icons.shopping_cart),
        ],
      ),
    );
  }

  Widget login() {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      onPressed: () => changeScreen('login'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Entrar'),
          Icon(Icons.person),
        ],
      ),
    );
  }

  Widget accessibility() {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.accessibility, color: Colors.blueAccent)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      child: Center(
        child: Container(
          height: 115,
          constraints: BoxConstraints(maxHeight: 115, maxWidth: 1026),
          width: 1026,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              logo(),
              searchbar(),
              location(),
              shoppingCart(),
              login(),
              accessibility(),
            ],
          ),
        ),
      ),
    );
  }
}
