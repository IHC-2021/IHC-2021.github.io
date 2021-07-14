import 'package:final_project_uiux/Screens/HomePage/mainHomePage.dart';
import 'package:final_project_uiux/Screens/ShoppingCart/mainShoppingCart.dart';
import 'package:final_project_uiux/Screens/Start/footer.dart';
import 'package:final_project_uiux/Screens/Start/header.dart';
import 'package:final_project_uiux/Screens/Start/nave.dart';
import 'package:final_project_uiux/Screens/Login/login.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var selectedScreen = 'inicio';
  var showCart = false;

  void changeScreen(String newScreen) {
    setState(() {
      selectedScreen = newScreen;
      if(newScreen == 'login') showCart = !showCart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: selectedScreen == 'login'
            ? NeverScrollableScrollPhysics()
            : AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(40),
                    constraints: BoxConstraints(
                      minWidth: 800,
                      maxWidth: 1100,
                    ),
                    child: Column(
                      children: [
                        Header(changeScreen: changeScreen),
                        Nave(changeScreen: changeScreen),
                        selectedScreen == 'inicio'
                            ? HomePage()
                            : ShoppingCart(),
                        Footer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            showCart
                ? Login(changeScreen: changeScreen)
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
