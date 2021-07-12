//import 'dart:ffi';

import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class Nave extends StatelessWidget {
  const Nave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hortaGreen,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){ }, child: Text('Início', style: TextStyle(color: Colors.white),)),
          TextButton(onPressed: (){ }, child: Text('Categorias', style: TextStyle(color: Colors.white),)),
          TextButton(onPressed: (){ }, child: Text('Ofertas', style: TextStyle(color: Colors.white),)),
          TextButton(onPressed: (){ }, child: Text('Novos Produtos', style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }
}