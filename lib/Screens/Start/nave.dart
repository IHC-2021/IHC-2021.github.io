import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

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