import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage('lib/resources/images/select.png');
  var _mensagem = 'Escolha opção abaixo';

  void checkWin(String escolhaUsuario) {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    int randomNumber = Random().nextInt(3);
    var choseMachine = opcoes[randomNumber];

    switch (choseMachine) {
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage('lib/resources/images/pedra.png');
        });

        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage('lib/resources/images/papel.png');
        });

        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage('lib/resources/images/tesoura.png');
        });

        break;
      default:
        setState(() {
          this._imagemApp = AssetImage('lib/resources/images/select.png');
        });
    }
    if ((escolhaUsuario == 'pedra' && choseMachine == 'tesoura') ||
        (escolhaUsuario == 'papel' && choseMachine == 'pedra') ||
        (escolhaUsuario == 'tesoura' && choseMachine == 'papel')) {
      print('gasd');
      this.setState(() {
        _mensagem = 'Você ganhou';
      });
    } else if ((choseMachine == 'pedra' && escolhaUsuario == 'tesoura') ||
        (choseMachine == 'papel' && escolhaUsuario == 'pedra') ||
        (choseMachine == 'tesoura' && escolhaUsuario == 'papel')) {
      print('perdeu');
      this.setState(() {
        _mensagem = 'Você perdeu';
      });
    } else {
      this.setState(() {
        _mensagem = 'Empate';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'JokenPO',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Escolha do APP',
              style: TextStyle(fontSize: 20),
            ),
            GestureDetector(
              onTap: () {},
              child: Image(
                image: this._imagemApp,
                width: 150,
                height: 150,
              ),
            ),
            Text(
              _mensagem,
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      checkWin('pedra');
                    });
                  },
                  child: Image.asset('lib/resources/images/pedra.png',
                      width: 100, height: 100),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      checkWin('papel');
                    });
                  },
                  child: Image.asset('lib/resources/images/papel.png',
                      width: 100, height: 100),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      checkWin('tesoura');
                    });
                  },
                  child: Image.asset('lib/resources/images/tesoura.png',
                      width: 100, height: 100),
                ),
              ],
            ),
          ],
        ));
  }
}
