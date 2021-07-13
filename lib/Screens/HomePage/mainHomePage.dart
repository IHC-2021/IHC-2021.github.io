import 'package:final_project_uiux/Screens/HomePage/carousel.dart';
import 'package:final_project_uiux/Screens/HomePage/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Carousel(),
        Products(),
      ],
    );
  }
}
