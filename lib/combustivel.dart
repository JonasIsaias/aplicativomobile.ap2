import 'package:flutter/material.dart';

class EscolhaCombustivel extends StatefulWidget {
  @override
  _EscolhaCombustivelState createState() => _EscolhaCombustivelState();
}

class _EscolhaCombustivelState extends State<EscolhaCombustivel> {
  final TextEditingController alcoolController = TextEditingController();
  final TextEditingController gasolinaController = TextEditingController();
  String resultado = '';

  void calcular() {
    double alcool = double.tryParse(alcoolController.text) ?? 0.0;
    double gasolina = double.tryParse(gasolinaController.text) ?? 0.0;

    if (gasolina == 0) {
      setState(() {
        resultado = 'Por favor, insira valores válidos.';
      });
      return;
    }

    double relacao = alcool / gasolina;
    setState(() {
      resultado =
          relacao <= 0.7 ? 'Abasteça com Álcool' : 'Abasteça com Gasolina';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logocombustivel.png',
          height: 50,
        ),
        centerTitle: true, //
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: alcoolController,
              decoration: InputDecoration(labelText: 'Preço do Álcool'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: gasolinaController,
              decoration: InputDecoration(labelText: 'Preço da Gasolina'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: calcular,
              child: Text('Calcular'),
            ),
            SizedBox(height: 25),
            Text(
              resultado,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
