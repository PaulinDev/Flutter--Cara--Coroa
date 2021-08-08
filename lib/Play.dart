import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  var valor;

  Play(this.valor);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  var _images = ["images/moeda_cara.png", "images/moeda_coroa.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Image.asset(_images[widget.valor]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("images/botao_voltar.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
