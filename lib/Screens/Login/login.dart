import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.75)),
        child: Center(
          child: Container(
            width: 400,
            height: 500,
            padding: const EdgeInsets.all(32.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 22, top: 128),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'E-mail'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 22),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Senha'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 22),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    minimumSize: Size(double.infinity, 60),
                  ),
                  onPressed: () {},
                  child: const Text('Entrar'),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    primary: Colors.grey,
                    minimumSize: Size(double.infinity, 60),
                  ),
                  onPressed: () => changeScreen('inicio'),
                  child: const Text('Fechar'),
                ),
              ),
            ]),
          ),
        ));
  }
}
