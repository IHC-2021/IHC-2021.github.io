import 'package:final_project_uiux/Templates/widgets.dart';
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
        children: [
          Icon(Icons.search),
          Container(width: 70),
        ],
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
      color: hortaGreen,
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
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/imagemFundo.jpeg'),
        ),
        Text(
          'Bem vindo\nHorti-frutti e mercearia',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return mainImage();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  Widget filterItem(String text) {
    bool vai = false;
    return Row(
      children: [
        Checkbox(
          checkColor: hortaGreen,
          value: vai,
          onChanged: (bool? value) {
            vai = !vai;
          },
        ),
        Text(text),
      ],
    );
  }

  Widget filterBar() {
    return Container(
      color: hortaPurple,
      child: Column(
        children: [
          Text('Promoções'),
          filterItem('Ofertas do dia'),
          filterItem('Ofertas da semana'),
          filterItem('Frutas'),
          filterItem('Hortaliças'),
          filterItem('Geleia'),
          Text('Promoções'),
          filterItem('Ofertas do dia'),
          filterItem('Ofertas da semana'),
          filterItem('Frutas'),
          filterItem('Hortaliças'),
          filterItem('Geleia'),
          Text('Promoções'),
          filterItem('Ofertas do dia'),
          filterItem('Ofertas da semana'),
          filterItem('Frutas'),
          filterItem('Hortaliças'),
          filterItem('Geleia'),
          Text('Promoções'),
          filterItem('Ofertas do dia'),
          filterItem('Ofertas da semana'),
          filterItem('Frutas'),
          filterItem('Hortaliças'),
          filterItem('Geleia'),
        ],
      ),
    );
  }

  Widget buyProduct(String product) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Banana'),
            Image(
              image: AssetImage('assets/$product.jpg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('-'),
                Text('1'),
                Text('+'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget productsGrid() {
    return Container(
      height: 800,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          buyProduct('banana'),
          buyProduct('couve'),
          buyProduct('banana'),
          buyProduct('couve'),
          buyProduct('banana'),
          buyProduct('couve'),
          buyProduct('banana'),
          buyProduct('couve'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: filterBar()),
        Expanded(flex: 6, child: productsGrid()),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Nave(),
            Carousel(),
            MainScreen(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
