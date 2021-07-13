import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

class Nave extends StatelessWidget {
  const Nave({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: hortaGreen,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: changeScreen('inicio'),
              child: Text('Início')),
          Text('Categorias'),
          Text('Ofertas'),
          Text('Produtos novos'),
        ],
      ),
    );
  }
}