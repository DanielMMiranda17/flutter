import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA 2925960", 
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
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("FICHA 2925960"), 
      ),
      body: ListView.builder(
        itemCount: aprendices.length, //esto mira cuantos aprendices hay para mostrar
        itemBuilder: (BuildContext context, int index) { // y esto lo que hace es mostrar cada aprendiz
          return ListTile(
            trailing: Icon(Icons.arrow_circle_right_outlined),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                aprendices[index]["foto"],
              ), 
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(
              "${aprendices[index]["telefono"]} - ${aprendices[index]["ubicacion"]}",
            ),
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor:
                          aprendices[index]["color_distintivo"], 
                      title: Text(aprendices[index]["nombre"]),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        children: [
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(
                              aprendices[index]["foto"],
                            ), // Foto grande
                          ),
                          Text("Teléfono: ${aprendices[index]["telefono"]}"),
                          Divider(),
                          Text("Ubicación: ${aprendices[index]["ubicacion"]}"),
                          Divider(),
                          Text(
                            "Fecha de inscripción: ${aprendices[index]["fecha_inscripcion"]}",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> aprendices = [
  {
    "nombre": "AMAYA MARTINEZ FABIAN YESID",
    "telefono": "573195638261",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 97, 35, 31), 
    "foto":
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c8155732-f83b-4653-9828-e87bded4cd94/diorob3-50626574-868d-40fb-bd17-dd6e4ac0c502.png/v1/fill/w_1280,h_1280,q_80,strp/juan_carlos_bodoque___31_minutos_by_mistonteriasvarias_diorob3-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M4MTU1NzMyLWY4M2ItNDY1My05ODI4LWU4N2JkZWQ0Y2Q5NFwvZGlvcm9iMy01MDYyNjU3NC04NjhkLTQwZmItYmQxNy1kZDZlNGFjMGM1MDIucG5nIiwiaGVpZ2h0IjoiPD0xMjgwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzgxNTU3MzItZjgzYi00NjUzLTk4MjgtZTg3YmRlZDRjZDk0XC9taXN0b250ZXJpYXN2YXJpYXMtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.rvl2GM-fQEZBtCVur_Jl68rjkI70duw0NHquCEMezY8",
  },
  {
    "nombre": "BELTRAN BUSTOS JULIAN DANIEL",
    "telefono": "3226607792",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 168, 49, 192),
    "foto": "https://i.pinimg.com/736x/3a/61/5c/3a615cb794ef1f618b2e46861b82f283.jpg",
  },
  {
    "nombre": "BORDA ARDILA RONNY",
    "telefono": "3219759220",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 191, 226, 35),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "CADENA QUINTERO ALAN JAIR",
    "telefono": "5714886956",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 82, 78, 72),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "CAMACHO FERRUCHO CARLOS EDUARDO",
    "telefono": "3143808047",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 111, 240, 227),
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "CASTAÑEDA LEIVA BRAYAN DAVID",
    "telefono": "3013237460",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 226, 219, 155),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "CORDOBA MALDONADO NICOL DAYANA",
    "telefono": "573053677841",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 34, 110, 121),
    "foto": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c8155732-f83b-4653-9828-e87bded4cd94/diorob3-50626574-868d-40fb-bd17-dd6e4ac0c502.png/v1/fill/w_1280,h_1280,q_80,strp/juan_carlos_bodoque___31_minutos_by_mistonteriasvarias_diorob3-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M4MTU1NzMyLWY4M2ItNDY1My05ODI4LWU4N2JkZWQ0Y2Q5NFwvZGlvcm9iMy01MDYyNjU3NC04NjhkLTQwZmItYmQxNy1kZDZlNGFjMGM1MDIucG5nIiwiaGVpZ2h0IjoiPD0xMjgwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzgxNTU3MzItZjgzYi00NjUzLTk4MjgtZTg3YmRlZDRjZDk0XC9taXN0b250ZXJpYXN2YXJpYXMtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.rvl2GM-fQEZBtCVur_Jl68rjkI70duw0NHquCEMezY8",
  },
  {
    "nombre": "CRUZ FIGUEROA OSCAR MAURICIO",
    "telefono": "3227813912",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purple,
    "foto":
        "https://static.wikia.nocookie.net/doblaje/images/4/49/Bodoque_C31.jpg/revision/latest?cb=20201119194611&path-prefix=es",
  },
  {
    "nombre": "CUIDA ESQUIVEL SAMUEL",
    "telefono": "3054302025",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.brown,
    "foto": "https://i.pinimg.com/736x/3a/61/5c/3a615cb794ef1f618b2e46861b82f283.jpg",
  },
  {
    "nombre": "DAZA CAMACHO JOSE DAVID",
    "telefono": "3143688476",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.indigo,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "ESPITIA ARENAS MAICOL STIVEN",
    "telefono": "3123767034",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pink,
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "FERNANDEZ VALLEJO SHARON TATIANA",
    "telefono": "3227658431",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amber,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "HERRERA MATEUS BRAYAN STIVEN",
    "telefono": "3132860500",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.lime,
    "foto": "https://via.placeholder.com/150",
  },
  {
    "nombre": "LONDOÑO CARVAJAL JUAN ESTEBAN",
    "telefono": "3505112026",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.greenAccent,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "LOZANO PANESSO EDWARD CAMILO",
    "telefono": "3041381520",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purpleAccent,
    "foto": "https://via.placeholder.com/150",
  },
  {
    "nombre": "MADRIGAL TIQUE JOHAN SNEIDER",
    "telefono": "3001597024",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.redAccent,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "MELO CANO CRISTIAN CAMILO",
    "telefono": "3112850538",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.orangeAccent,
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "MENESES PARRA DAVID LEONARDO",
    "telefono": "3138292531",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueAccent,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "MIRANDA MORENO JOHAN DANIEL",
    "telefono": "3202564149",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.cyanAccent,
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "MONTEALEGRE SANCHEZ KEVIN SANTIAGO",
    "telefono": "3209188193",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.tealAccent,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "MONZON AMORTEGUI CRISTIAN DAVID",
    "telefono": "3107883038",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 233, 238, 174),
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "MORALEZ PACHON DAVID SANTIAGO",
    "telefono": "3116658577",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 63, 19, 34),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "PACHECO RUEDA KEVIN LEONARDO",
    "telefono": "3156406251",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amberAccent,
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "TORRES TORRES MIGUEL ANGEL",
    "telefono": "3135562730",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 221, 220, 221),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "TUNJANO CORREA MIGUEL ANGEL",
    "telefono": "3125918289",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueGrey,
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "VALBUENA MANCERA DIEGO ALEJANDRO",
    "telefono": "3016875644",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 89, 80, 90),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "VASQUEZ PRADA JOHN MICHAEL",
    "telefono": "3123503334",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 56, 26, 36),
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "VILLAZON MONTERO MARIA ALEJANDRA",
    "telefono": "3172897823",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 153, 202, 197),
    "foto":
        "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
  {
    "nombre": "ZABALETA CALDERON JOSE DAVID",
    "telefono": "3235995105",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": const Color.fromARGB(255, 137, 253, 141),
    "foto": "https://i.ytimg.com/vi/7sa1caATpCI/oar2.jpg",
  },
];