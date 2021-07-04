import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  Widget footerItem({required String title, required Widget content}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        content,
      ],
    );
  }

  Widget formaPagamento() {
    return footerItem(
      title: 'Forma de pagamento',
      content: Row(
        children: [
          Text('cartao'),
          Text('outro cartao'),
        ],
      ),
    );
  }

  Widget parceiros() {
    return footerItem(
      title: 'Parceiros',
      content: Row(
        children: [
          Text('email'),
          Text('outro email'),
        ],
      ),
    );
  }

  Widget redesSociais() {
    return footerItem(
      title: 'Redes sociais',
      content: Row(
        children: [
          Text('logo'),
          Text('das redes'),
        ],
      ),
    );
  }

  Widget contato() {
    return footerItem(
      title: 'Contato',
      content: Row(
        children: [
          Text('nosso email'),
          Text('nosso celular'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: hortaGreen,
      child: Row(
        children: [
          Expanded(flex: 1, child: formaPagamento()),
          Expanded(flex: 1, child: parceiros()),
          Expanded(flex: 1, child: redesSociais()),
          Expanded(flex: 1, child: contato()),
        ],
      ),
    );
  }
}
