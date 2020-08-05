import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Imagine uma nova história para sua vida e acredite nela.",
    "Ser feliz sem motivo é a mais autêntica forma de felicidade."
  ];

  var _fraseGerada = "Clique aqui para gerar uma frase";
  void _mudarFrase() {
    setState(() {
      var numeroSorteado = Random().nextInt(_frases.length);
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("./images/logo.png"),
            Text(
              _fraseGerada,
              style: TextStyle(fontSize: 24),
            ),
            RaisedButton(
              onPressed: _mudarFrase,
              color: Colors.green,
              child: Text("Nova Frase", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
