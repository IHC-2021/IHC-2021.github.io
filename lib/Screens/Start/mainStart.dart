import 'package:final_project_uiux/Screens/Start/carousel.dart';
import 'package:final_project_uiux/Screens/Start/footer.dart';
import 'package:final_project_uiux/Screens/Start/header.dart';
import 'package:final_project_uiux/Screens/Start/nave.dart';
import 'package:final_project_uiux/Screens/Start/products.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Nave(),
            Carousel(),
            Products(),
            Footer(),
          ],
        ),
      ),
    );
  }
}











