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

  Widget buyProduct(String product, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.10),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Text(
            product,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Image(
            image: AssetImage('assets/$product.jpg'),
            height: 150,
            semanticLabel: label,
          ),
          Text(
            'R\$ 15.99 / kg',
            style: TextStyle(fontSize: 17, height: 2),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 200),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.10),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  color: Colors.green,
                  icon: Icon(
                    Icons.add_circle,
                    semanticLabel: 'Adicionar Produto',
                    size: 32,
                  ),
                ),
                Text('1'),
                IconButton(
                  color: Colors.green,
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_circle,
                    semanticLabel: 'Adicionar Produto',
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productsGrid() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.10),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
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
          return index % 2 == 0
              ? buyProduct('Banana', 'Um Cacho de Bananas')
              : buyProduct('Couve', 'Duas Folhas de Couve');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1026),
      child: Center(
        child: Row(
          children: [
            Expanded(flex: 3, child: filterBar()),
            Expanded(flex: 12, child: productsGrid()),
          ],
        ),
      ),
    );
  }
}
