import 'package:flutter/material.dart';
import 'package:cara_coroa/Play.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _play(){
    var numberRandom = Random().nextInt(2);
    return numberRandom;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Play(_play())));
                },
                child: Image.asset("images/botao_jogar.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
