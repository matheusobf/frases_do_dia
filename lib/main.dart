import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Sou apenas um pequeno planeta que se perde diariamente em todo o seu universo.",
    "Novas amizades serão sempre bem-vindas para darem cor e alegria ao meu dia a dia.",
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Nem toda mudança importante acontece de repente e faz barulho, algumas são silenciosas e vão se fazendo no dia a dia."];
  var _fraseGerada = "Clique abaixo para gerar uma frase!";
  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
    _fraseGerada = _frases[numeroSorteado];  
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: const EdgeInsets.all(16),
        // decoration:
        //     BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("images/logo.png"),
          Text(
            _fraseGerada,
            textAlign: TextAlign.justify,
            style: const TextStyle(
                fontSize: 25, fontStyle: FontStyle.italic, color: Colors.black),
          ),
          RaisedButton(
            onPressed: _gerarFrase,
            color: Colors.green,
            child: const Text(
              "Nova Frase",
              style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
      ),
    );
  }
}
