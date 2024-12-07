import 'package:flutter/material.dart';
import 'dart:math';

class FrasesDoDia extends StatefulWidget {
  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {
  final List<String> frases = [
    'Daria tudo que sei pela metade do que ignoro.',
    'Toda a infelicidade dos homens provém da esperança.',
    'Não fales bem de ti aos outros, pois não os convencerás. Não fales mal, pois te julgarão muito pior do que és.',
    'Nada é suficiente para quem considera pouco o suficiente.',
    'Não espere por uma crise para descobrir o que é importante em sua vida.',
  ];
  String fraseAtual = 'Clique para gerar uma frase.';

  void gerarFrase() {
    setState(() {
      fraseAtual = frases[Random().nextInt(frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logofrases.png',
          height: 150,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              fraseAtual,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: gerarFrase,
              child: Text('Nova Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
