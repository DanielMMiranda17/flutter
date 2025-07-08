import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());  
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SENA | CEET",
      debugShowCheckedModeBanner: false,
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text("FICHA 2925960"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(          
          itemCount: aprendices.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(aprendices[index]),
              ),
            );
          },
        ),
      ),      
    );
  }
}
// aqui se crea un string en donde esta la lista de los aprendices de la ficha 2925960
List<String> aprendices = [
  "FABIAN YESID AMAYA MARTINEZ",
  "JULIAN DANIEL BELTRAN BUSTOS",
  "RONNY BORDA ARDILA",
  "ALAN JAIR CADENA QUINTERO",
  "CARLOS EDUARDO CAMACHO FERRUCHO",
  "BRAYAN DAVID CASTAÑEDA LEIVA",
  "NICOL DAYANA CORDOBA MALDONADO",
  "OSCAR MAURICIO CRUZ FIGUEROA",
  "SAMUEL CUIDA ESQUIVEL",
  "JOSE DAVID DAZA CAMACHO",
  "MAICOL STIVEN ESPITIA ARENAS",
  "BRAYAN STIVEN HERRERA MATEUS",
  "JUAN ESTEBAN LONDOÑO CARVAJAL",
  "EDWARD CAMILO LOZANO PANESSO",
  "JOHAN SNEIDER MADRIGAL TIQUE",
  "CRISTIAN CAMILO MELO CANO",
  "DAVID LEONARDO MENESES PARRA",
  "JOHAN DANIEL MIRANDA MORENO",
  "KEVIN SANTIAGO MONTEALEGRE SANCHEZ",
  "CRISTIAN DAVID MONZON AMORTEGUI",
  "DAVID SANTIAGO MORALEZ PACHON",
  "MIGUEL ANGEL TORRES TORRES",
  "MIGUEL ANGEL TUNJANO CORREA",
  "DIEGO ALEJANDRO VALBUENA MANCERA",
  "JOHN MICHAEL VASQUEZ PRADA",
  "MARIA ALEJANDRA VILLAZON MONTERO",
  "JOSE DAVID ZABALETA CALDERON"
];