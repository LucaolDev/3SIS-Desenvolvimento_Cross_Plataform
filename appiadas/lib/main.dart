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

//stf

class AppiadasScreen extends StatefulWidget {
  const AppiadasScreen({super.key});

  @override
  State<AppiadasScreen> createState() => _AppiadasScreenState();
}

class _AppiadasScreenState extends State<AppiadasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Appiadas")),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_joker.png"),
            fit: BoxFit.cover,
          ),
        ),

        //ch
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aqui terá uma piada",
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
