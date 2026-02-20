import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stl

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Appiadas", home: AppiadasScreen());
  }
}

class Piada {
  final String pergunta;
  final String resposta;

  Piada({required this.pergunta, required this.resposta});
}

//stf

class AppiadasScreen extends StatefulWidget {
  const AppiadasScreen({super.key});

  @override
  State<AppiadasScreen> createState() => _AppiadasScreenState();
}

class _AppiadasScreenState extends State<AppiadasScreen> {
  final List<Piada> _piadas = [
    Piada(
      pergunta: "Por que o delsenvolvedor levou o computador para o medico?",
      resposta: "Porque ele tava com virus.",
    ),
    Piada(
      pergunta: "Por que o livro de matematica tava triste?",
      resposta: "Porque ele tinha varios problemas.",
    ),
  ];

  Piada _piadaSelecionada = Piada(
    pergunta: "Aqui tera uma piada", 
    resposta: "Clique no botão abaixo"
    );

  void _trocarPiada() {
    final indice = Random().nextInt(_piadas.length);
    setState(() {
      _piadaSelecionada = _piadas[indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_joker.png"),
            fit: BoxFit.cover,
          ),
        ),

        //ch
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${_piadaSelecionada.pergunta}\n\n${_piadaSelecionada.resposta}",
                
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              ),

              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: _trocarPiada,
                  child: Text("Nova Piada"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
