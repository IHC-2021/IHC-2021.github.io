import 'package:final_project_uiux/Templates/widgets.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

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
      alignment: Alignment.topCenter,
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
        ],
      ),
    );
  }

  Widget buyProduct(String product) {
    return Container(
      child: Column(
        children: [
          Text(product),
          Image(
            image: AssetImage('assets/$product.jpg'),
            height: 150,
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
    );
  }

  Widget productsGrid() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: 14,
        itemBuilder: (context, index) {
          return index % 2 == 0 ? buyProduct('banana') : buyProduct('couve');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: filterBar()),
        Expanded(flex: 12, child: productsGrid()),
      ],
    );
  }
}
