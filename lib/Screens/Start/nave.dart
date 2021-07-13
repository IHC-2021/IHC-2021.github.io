import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

class Nave extends StatelessWidget {
  const Nave({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  Widget naveButton({required String text, Function? function}) {
    return TextButton(
      onPressed: function == null ? () {} : () => function,
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
          naveButton(text: 'Início', function: changeScreen),
          naveButton(text: 'Categorias'),
          naveButton(text: 'Ofertas'),
          naveButton(text: 'Novos Produtos'),
        ],
      ),
    );
  }
}
