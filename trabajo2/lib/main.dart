import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // Pone el titulo y el texto que se mostrara en la pantalla
      title: "SENA",
      home: Text('Daniel Miranda'),
    );
  }
}