               import 'package:flutter/material.dart';
                  
                      void main() {
                        runApp(const MyApp());
                      }
                  
                     class MyApp extends StatelessWidget {
                       const MyApp({super.key});
                   
                       // Esta es la pantalla principal que sale al iniciar flutter es una pantalla solo con un titulo y un boton que incremente y disminuye dependiendo de cuantos clicks de
                       @override
                       Widget build(BuildContext context) {
                         return MaterialApp(
                           title: 'Flutter Demo',
                           theme: ThemeData(
                            
                             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                             useMaterial3: true,
                           ),
                           //creo que lo que dice home es porque lo que se vera en la pantalla principal 
                           home: const MyHomePage(title: 'Flutter Demo Home Page'),
                         );
                       }
                     }
                   
                     class MyHomePage extends StatefulWidget {
                       const MyHomePage({super.key, required this.title});
                   
                       
                   
                       final String title;
                   
                       @override
                       State<MyHomePage> createState() => _MyHomePageState();
                     }
                   // Aqui esta el contador de incrementar y disminuir
                     class _MyHomePageState extends State<MyHomePage> {
                       int _counter = 0;
                   
                       void _incrementCounter() {
                         setState(() {
                         
                           _counter++;
                         });
                       }
                   
                       @override
                       Widget build(BuildContext context) {
                       
                         return Scaffold(
                           appBar: AppBar(
                           
                             backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                             
                             title: Text(widget.title),
                           ),
                           body: Center(
                           
                             child: Column(
                             
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'You have pushed the button this many times:',
                                ),
                                Text(
                                  '$_counter',
                                  style: Theme.of(context).textTheme.headlineMedium,
                                ),
                              ],
                            ),
                          ),
                          floatingActionButton: FloatingActionButton(
                            onPressed: _incrementCounter,
                            tooltip: 'Increment',
                            child: const Icon(Icons.add),
                          ), .
                        );
                      }
                    }