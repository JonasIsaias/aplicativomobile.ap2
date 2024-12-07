import 'package:flutter/material.dart';
import 'dart:math';

class JogoCaraOuCoroa extends StatefulWidget {
  @override
  _JogoCaraOuCoroaState createState() => _JogoCaraOuCoroaState();
}

class _JogoCaraOuCoroaState extends State<JogoCaraOuCoroa> {
  String resultado = '';
  String escolhaUsuario = '';
  String escolhaComputador = '';
  String mensagemResultado = '';

  void jogar(String escolha) {
    final random = Random();
    int escolhaComp = random.nextInt(2); //
    escolhaUsuario = escolha == 'cara' ? 'Cara' : 'Coroa';
    escolhaComputador = escolhaComp == 0 ? 'Cara' : 'Coroa';

    setState(() {
      if (escolhaUsuario == escolhaComputador) {
        mensagemResultado = 'Você venceu!';
      } else {
        mensagemResultado = 'Aplicativo venceu!';
      }

      resultado =
          'Você escolheu: $escolhaUsuario\nAplicativo escolheu: $escolhaComputador\n\n$mensagemResultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cara ou Coroa",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Escolha Cara ou Coroa",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => jogar('cara'),
                  child: Image.asset(
                    'images/cara.png',
                    width: 150,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () => jogar('coroa'),
                  child: Image.asset(
                    'images/coroa.png',
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
