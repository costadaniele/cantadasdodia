import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyAppCantadas());
}

class MyAppCantadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cantadas do dia',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFFea3788),
        canvasColor: const Color(0xFF361134),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _frases = [
    "Eu sei que as coisas não tão fáceis para você, mas eu tô. <3",
    "Gata, me chama de horário de verão e vem perder umas horas comigo.",
    "Seu nome é Tamara, porque você Tamaravilhosa",
    "Gata, você tem a cara da minha terceira namorada, porque só tive duas."
        "Você é um prédio? Porque é difícil ficar sem você.",
    "Não é seu aniversário, mas você está de parabéns",
    "Seu pai é padeiro? Não, por que? Porque você é um pãozinho",
    "Gata, me chama de tabela periódica e diz que rola uma química entre nós.",
    "Adenina - Timina, Citosina - Guanina, Actina - Miosina, Eu e você.",
    "Tem um brigadeiro e um beijinho na ladeira. O brigadeiro rolou a ladeira abaixo. E o beijinho? Rola?"
  ];

  var _frasegerada = "Clique em Nova Frase";

  void _gerarFrase() {
    var indice = Random().nextInt(_frases.length);

    setState(() {
      _frasegerada = _frases[indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cantadas do dia"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _frasegerada,
              //"Frase do Dia\n $_frasegerada",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFe0e0e0),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
                key: null,
                onPressed: () {
                  _gerarFrase();
                },
                color: const Color(0xFF212121),
                child: new Text(
                  "+",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: const Color(0xFFea3788),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
          ],
        ),
      ),
    );
  }
}
