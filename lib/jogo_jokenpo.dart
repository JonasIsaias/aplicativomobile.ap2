import 'package:flutter/material.dart';
import 'dart:math';

class JogoJokenpo extends StatefulWidget {
  @override
  _JogoJokenpoState createState() => _JogoJokenpoState();
}

class _JogoJokenpoState extends State<JogoJokenpo> {
  String mensagem = "Escolha uma opção abaixo";
  String escolhaApp = "images/padrao.png";

  void jogar(String escolhaUsuario) {
    List<String> opcoes = ["pedra", "papel", "tesoura"];
    int index = Random().nextInt(3);
    String escolhaDoApp = opcoes[index];

    setState(() {
      escolhaApp = "images/$escolhaDoApp.png";
    });

    if ((escolhaUsuario == "pedra" && escolhaDoApp == "tesoura") ||
        (escolhaUsuario == "papel" && escolhaDoApp == "pedra") ||
        (escolhaUsuario == "tesoura" && escolhaDoApp == "papel")) {
      setState(() {
        mensagem = "Você venceu!";
      });
    } else if (escolhaUsuario == escolhaDoApp) {
      setState(() {
        mensagem = "Empate!";
      });
    } else {
      setState(() {
        mensagem = "Você perdeu!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jokenpô",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 22),
            child: Text(
              "Escolha do Aplicativo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(escolhaApp, height: 100),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 22),
            child: Text(
              mensagem,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => jogar("pedra"),
                child: Image.asset("images/pedra.png", height: 60),
              ),
              GestureDetector(
                onTap: () => jogar("papel"),
                child: Image.asset("images/papel.png", height: 60),
              ),
              GestureDetector(
                onTap: () => jogar("tesoura"),
                child: Image.asset("images/tesoura.png", height: 60),
              ),
            ],
          )
        ],
      ),
    );
  }
}
