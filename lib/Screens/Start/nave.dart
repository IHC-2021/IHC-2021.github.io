import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

class Nave extends StatelessWidget {
  const Nave({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  Widget naveButton({required String text}) {
    return TextButton(
      onPressed: text == 'INICIO' ? () => changeScreen('inicio') : () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hortaGreen,
      child: Center(
        child: Container(
          height: 40,
          constraints: BoxConstraints(
            maxWidth: 1026
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              naveButton(text: 'INICIO'),
              naveButton(text: 'CATEGORIAS'),
              naveButton(text: 'OFERTAS'),
              naveButton(text: 'NOVOS PRODUTOS'),
            ],
          ),
        ),
      ),
    );
  }
}
