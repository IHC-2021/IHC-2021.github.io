import 'package:flutter/material.dart';

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