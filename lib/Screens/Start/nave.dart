import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

class Nave extends StatelessWidget {
  const Nave({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  Widget naveButton({required String text}) {
    return TextButton(
      onPressed: text == 'Início' ?()=> changeScreen('inicio') : () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hortaGreen,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          naveButton(text: 'Início'),
          naveButton(text: 'Categorias'),
          naveButton(text: 'Ofertas'),
          naveButton(text: 'Novos Produtos'),
        ],
      ),
    );
  }
}
