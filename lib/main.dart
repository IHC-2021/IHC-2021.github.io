import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  Widget logo() {
    return Image(
      image: AssetImage('assets/logo.jpeg'),
    );
  }

  Widget searchbar() {
    return Container(
      color: Colors.grey,
      child: Row(
        children: [Icon(Icons.search), Container(width: 70)],
      ),
    );
  }

  Widget location() {
    return Container(
      child: Row(
        children: [
          Text('São Carlos - SP'),
          Icon(Icons.location_city),
        ],
      ),
    );
  }

  Widget shoppingCart() {
    return Container(
      child: Row(
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
          Text('Carrinho'),
          Icon(Icons.person),
        ],
      ),
    );
  }

  Widget accessibility() {
    return Container(
      child: Row(
        children: [
          Icon(Icons.accessibility, color: Colors.blueAccent),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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

class Nave extends StatelessWidget {
  const Nave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 80,
      child: Row(
        children: [
          Expanded(child: Text('Início')),
          Expanded(child: Text('Categorias')),
          Expanded(child: Text('Ofertas')),
          Expanded(child: Text('Produtos novos')),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  Widget mainImage() {
    return Image(
      image: AssetImage('assets/imagemFundo.jpeg'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return mainImage();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
Widget filterBar(){
  return Container();
}

Widget productsGrid(){
  return Container();
}
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        filterBar(),
        productsGrid(),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/footer.jpeg'),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Nave(),
          Carousel(),
          MainScreen(),
          Footer(),
        ],
      ),
    );
  }
}
