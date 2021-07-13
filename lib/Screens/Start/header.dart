import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  Widget logo() {
    return Image(
      image: AssetImage('assets/logo.jpeg'),
    );
  }

  Widget searchbar() {
    return Container(
      color: Colors.grey.withOpacity(0.35),
      child: Row(
        children: [
          Icon(Icons.search),
          Text('Pesquisa...',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black38)),
          Container(width: 10),
        ],
      ),
    );
  }

  Widget location() {
    return Container(
      child: Row(
        children: [
          Text('São Carlos - SP'),
          IconButton(onPressed: () {}, icon: Icon(Icons.location_city)),
        ],
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
      onPressed: () => changeScreen('carrinho'),
      child: Container(
        child: Row(
          children: [
            Text('Carrinho'),
            Icon(Icons.shopping_cart),
          ],
        ),
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
    return Container(
      child: Row(
        children: [
          Text('Entrar'),
          IconButton(onPressed: () => changeScreen('login'), icon: Icon(Icons.person)),
        ],
      ),
    );
  }

  Widget accessibility() {
    return Container(
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.accessibility, color: Colors.blueAccent)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
    return Row(
      children: [
        Expanded(child: logo()),
        Expanded(child: searchbar()),
        Expanded(child: location()),
        Expanded(child: shoppingCart()),
        Expanded(child: login()),
        Expanded(child: accessibility()),
      ],
    );
  }
}
