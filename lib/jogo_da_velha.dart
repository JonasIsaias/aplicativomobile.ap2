import 'package:flutter/material.dart';

class JogoDaVelha extends StatefulWidget {
  @override
  _JogoDaVelhaState createState() => _JogoDaVelhaState();
}

class _JogoDaVelhaState extends State<JogoDaVelha> {
  List<String> tabuleiro = List.filled(9, '', growable: false);
  String jogadorAtual = 'X';
  String resultado = '';

  void jogada(int posicao) {
    if (tabuleiro[posicao] == '' && resultado == '') {
      setState(() {
        tabuleiro[posicao] = jogadorAtual;
        verificarVitoria();
        jogadorAtual = (jogadorAtual == 'X') ? 'O' : 'X';
      });
    }
  }

  void verificarVitoria() {
    List<List<int>> combinacoes = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];
    for (var combinacao in combinacoes) {
      if (tabuleiro[combinacao[0]] != '' &&
          tabuleiro[combinacao[0]] == tabuleiro[combinacao[1]] &&
          tabuleiro[combinacao[0]] == tabuleiro[combinacao[2]]) {
        setState(() {
          resultado = '${tabuleiro[combinacao[0]]} venceu!';
        });
        return;
      }
    }
    if (!tabuleiro.contains('')) {
      setState(() {
        resultado = 'Empate!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jogo da Velha",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resultado,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 9, //
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => jogada(index), //
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Text(
                      tabuleiro[index], //
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
