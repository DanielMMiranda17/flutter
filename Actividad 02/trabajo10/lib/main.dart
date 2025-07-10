import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

final txtNombre = TextEditingController();
final txtDescripcion = TextEditingController();
final txtFechaLanz = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFotografia = TextEditingController();
final txtColor = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA CEET",
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
        title: Text("FICHA 2925960"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(aprendices[index]["ubicacion"]),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(aprendices[index]["nombre"]),
                      backgroundColor: aprendices[index]["color_distintivo"],
                      foregroundColor: Colors.white,
                    ),
                    body: ListView(
                      padding: const EdgeInsets.all(20),
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                              aprendices[index]["foto"],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                          leading: const Icon(Icons.phone),
                          title: Text("Teléfono"),
                          subtitle: Text(aprendices[index]["telefono"]),
                        ),
                        ListTile(
                          leading: const Icon(Icons.location_on),
                          title: Text("Ubicación"),
                          subtitle: Text(aprendices[index]["ubicacion"]),
                        ),
                        ListTile(
                          leading: const Icon(Icons.calendar_today),
                          title: Text("Fecha de inscripción"),
                          subtitle: Text(
                            aprendices[index]["fecha_inscripcion"],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  title: Text("Añadir Aprendiz"),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtNombre,
                        decoration: InputDecoration(
                          labelText: "Nombres",
                          hintText: "Nombres del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtDescripcion,
                        decoration: InputDecoration(
                          labelText: "Apellidos",
                          hintText: "Apellido del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtFechaLanz,
                        decoration: InputDecoration(
                          labelText: "Inscripcion",
                          hintText: "Fecha de inscripcion",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtFotografia,
                        decoration: InputDecoration(
                          labelText: "Ubicación",
                          hintText: "Ubicación del sitio turístico",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtColor,
                        decoration: InputDecoration(
                          labelText: "Telefono",
                          hintText: "Telefono del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo,
                  onPressed: () {
                    if (txtNombre.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ERROR! Los espacios estan vacíos"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            "Se ha guardado satisfactoriamente el aprendiz: ${txtNombre.text}",
                          ),
                        ),
                      );
                    }
                  },
                  child: Icon(Icons.save),
                ),
              );
            },
          );
        },
        child: Icon(Icons.account_circle),
      ),
    );
  }
}

// Lista de imágenes para alternar
final List<String> imagenes = [
  "https://pbs.twimg.com/profile_images/1278036366690070529/mVvh60Z1_400x400.jpg",
  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c8155732-f83b-4653-9828-e87bded4cd94/diorob3-50626574-868d-40fb-bd17-dd6e4ac0c502.png/v1/fill/w_1280,h_1280,q_80,strp/juan_carlos_bodoque___31_minutos_by_mistonteriasvarias_diorob3-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M4MTU1NzMyLWY4M2ItNDY1My05ODI4LWU4N2JkZWQ0Y2Q5NFwvZGlvcm9iMy01MDYyNjU3NC04NjhkLTQwZmItYmQxNy1kZDZlNGFjMGM1MDIucG5nIiwiaGVpZ2h0IjoiPD0xMjgwIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvYzgxNTU3MzItZjgzYi00NjUzLTk4MjgtZTg3YmRlZDRjZDk0XC9taXN0b250ZXJpYXN2YXJpYXMtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.rvl2GM-fQEZBtCVur_Jl68rjkI70duw0NHquCEMezY8",
  "https://i.pinimg.com/736x/f5/04/24/f504246d7f9ffe6aa412a15d7bc33fb2.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0O2m-sPn608j2Iyj1_SF8XV6dDw9bWULMtw&s"
];

// Lista de colores distintivos
final List<Color> colores = [
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.lime,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
  Colors.red,
  Colors.pink,
  Colors.purple,
];

List<Map<String, dynamic>> aprendices = [
  {
    "nombre": "AMAYA MARTINEZ FABIAN YESID",
    "telefono": "573195638261",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[0],
    "foto": imagenes[0],
  },
  {
    "nombre": "BELTRAN BUSTOS JULIAN DANIEL",
    "telefono": "3226607792",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[1],
    "foto": imagenes[1],
  },
  {
    "nombre": "BORDA ARDILA RONNY",
    "telefono": "3219759220",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[2],
    "foto": imagenes[2],
  },
  {
    "nombre": "CADENA QUINTERO ALAN JAIR",
    "telefono": "5714886956",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[3],
    "foto": imagenes[3],
  },
  {
    "nombre": "CAMACHO FERRUCHO CARLOS EDUARDO",
    "telefono": "3143808047",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[4],
    "foto": imagenes[0],
  },
  {
    "nombre": "CASTAÑEDA LEIVA BRAYAN DAVID",
    "telefono": "3013237460",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[5],
    "foto": imagenes[1],
  },
  {
    "nombre": "CORDOBA MALDONADO NICOL DAYANA",
    "telefono": "573053677841",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[6],
    "foto": imagenes[2],
  },
  {
    "nombre": "CRUZ FIGUEROA OSCAR MAURICIO",
    "telefono": "3227813912",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[7],
    "foto": imagenes[3],
  },
  {
    "nombre": "CUIDA ESQUIVEL SAMUEL",
    "telefono": "3054302025",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[8],
    "foto": imagenes[0],
  },
  {
    "nombre": "DAZA CAMACHO JOSE DAVID",
    "telefono": "3143688476",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[9],
    "foto": imagenes[1],
  },
  {
    "nombre": "ESPITIA ARENAS MAICOL STIVEN",
    "telefono": "3123767034",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[10],
    "foto": imagenes[2],
  },
  {
    "nombre": "FERNANDEZ VALLEJO SHARON TATIANA",
    "telefono": "3227658431",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[11],
    "foto": imagenes[3],
  },
  {
    "nombre": "HERRERA MATEUS BRAYAN STIVEN",
    "telefono": "3132860500",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[0],
    "foto": imagenes[0],
  },
  {
    "nombre": "LONDOÑO CARVAJAL JUAN ESTEBAN",
    "telefono": "3505112026",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[1],
    "foto": imagenes[1],
  },
  {
    "nombre": "LOZANO PANESSO EDWARD CAMILO",
    "telefono": "3041381520",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[2],
    "foto": imagenes[2],
  },
  {
    "nombre": "MADRIGAL TIQUE JOHAN SNEIDER",
    "telefono": "3001597024",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[3],
    "foto": imagenes[3],
  },
  {
    "nombre": "MELO CANO CRISTIAN CAMILO",
    "telefono": "3112850538",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[4],
    "foto": imagenes[0],
  },
  {
    "nombre": "MENESES PARRA DAVID LEONARDO",
    "telefono": "3138292531",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[5],
    "foto": imagenes[1],
  },
  {
    "nombre": "MIRANDA MORENO JOHAN DANIEL",
    "telefono": "3202564149",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[6],
    "foto": imagenes[2],
  },
  {
    "nombre": "MONTEALEGRE SANCHEZ KEVIN SANTIAGO",
    "telefono": "3209188193",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[7],
    "foto": imagenes[3],
  },
  {
    "nombre": "MONZON AMORTEGUI CRISTIAN DAVID",
    "telefono": "3107883038",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[8],
    "foto": imagenes[0],
  },
  {
    "nombre": "MORALEZ PACHON DAVID SANTIAGO",
    "telefono": "3116658577",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[9],
    "foto": imagenes[1],
  },
  {
    "nombre": "PACHECO RUEDA KEVIN LEONARDO",
    "telefono": "3156406251",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[10],
    "foto": imagenes[2],
  },
  {
    "nombre": "PINZON HERNANDEZ VALENTINA",
    "telefono": "3115918301",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[11],
    "foto": imagenes[3],
  },
  {
    "nombre": "TORRES TORRES MIGUEL ANGEL",
    "telefono": "3135562730",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[0],
    "foto": imagenes[0],
  },
  {
    "nombre": "TUNJANO CORREA MIGUEL ANGEL",
    "telefono": "3125918289",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[1],
    "foto": imagenes[1],
  },
  {
    "nombre": "VALBUENA MANCERA DIEGO ALEJANDRO",
    "telefono": "3016875644",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[2],
    "foto": imagenes[2],
  },
  {
    "nombre": "VASQUEZ PRADA JOHN MICHAEL",
    "telefono": "3123503334",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[3],
    "foto": imagenes[3],
  },
  {
    "nombre": "VILLAZON MONTERO MARIA ALEJANDRA",
    "telefono": "3172897823",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[4],
    "foto": imagenes[0],
  },
  {
    "nombre": "ZABALETA CALDERON JOSE DAVID",
    "telefono": "3235995105",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": colores[5],
    "foto": imagenes[1],
  },
];