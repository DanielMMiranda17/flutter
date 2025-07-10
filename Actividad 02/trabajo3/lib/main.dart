import 'package:flutter/material.dart';
                       void main(List<String> args) {
                         runApp(Principal());
                       }
                       class Principal extends StatelessWidget {
                         const Principal({super.key});
                         @override
                         Widget build(BuildContext context) {
                           return MaterialApp(
                           //Aqui va el titulo que se va a ver mas grande
                             title: "SENA | DISTRITO CAPITAL | CEET",
                             home: Column(
                               children: [
                               //texto osea lo que va a aparecer en la pagina es como un parrafo
                                 Text("Daniel"),
                                 Text("Miranda"),
                                 Icon(Icons.calculate),
                                 Icon(Icons.star),
                                 //Esto sirve para poner botones pero no los hace funcional
                                 ElevatedButton(onPressed: (){}, child: Text("Crear")),
                                 ElevatedButton(onPressed: (){}, child: Text("Editar")),
                                 ElevatedButton(onPressed: (){}, child: Text("Enviar")),
                               ],
                             ),
                           );
                         }
                       }     