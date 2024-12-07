import 'package:flutter/material.dart';
import 'jogo_jokenpo.dart'; 
import 'jogo_cara_ou_coroa.dart'; 
import 'jogo_da_velha.dart'; 

class TelaJogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logojogos.png', 
          height: 80, 
        ),
        centerTitle: true, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {           
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JogoJokenpo()),
                );
              },
              child: Center(child: Text('Jokenpô')),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JogoCaraOuCoroa()),
                );
              },
              child: Center(child: Text('Cara ou Coroa')),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JogoDaVelha()),
                );
              },
              child: Center(child: Text('Jogo da Velha')),
            ),
          ],
        ),
      ),
    );
  }
}
