import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "JokenPO",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Escolha do APP',
              style: TextStyle(fontSize: 20),
            ),
            Image.asset(
              'lib/resources/images/select.png',
              width: 150,
              height: 150,
            ),
            Text('voce perdeu'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('lib/resources/images/pedra.png',
                    width: 100, height: 100),
                Image.asset('lib/resources/images/papel.png',
                    width: 100, height: 100),
                Image.asset('lib/resources/images/tesoura.png',
                    width: 100, height: 100),
              ],
            ),
          ],
        ));
  }
}
