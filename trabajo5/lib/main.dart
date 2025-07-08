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
      title: "SENA | CEET",
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[900],
          title: Text("Información Personal"),
        ),
        body: SingleChildScrollView(  // ✅ Agregar scroll
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.network(
                    "https://pbs.twimg.com/ext_tw_video_thumb/1063945641653612545/pu/img/sk0kcWHxHjd8lwIm.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  title: Text("JOHAN DANIEL"),
                  subtitle: Text("Nombres"),
                  leading: Icon(Icons.person_rounded),
                ),
                Divider(),
                ListTile(
                  title: Text("MIRANDA MORENO"),
                  subtitle: Text("Apellidos"),
                  leading: Icon(Icons.person_outline),
                ),
                Divider(),
                ListTile(
                  title: Text("3228869104"),
                  subtitle: Text("Celular"),
                  leading: Icon(Icons.phone),
                ),
                Divider(),
                ListTile(
                  title: Text("DISTRITO CAPITAL"),
                  subtitle: Text("Regional"),
                  leading: Icon(Icons.location_city),
                ),
                Divider(),
                ListTile(
                  title: Text("CEET"),
                  subtitle: Text("Centro de Formación"),
                  leading: Icon(Icons.school),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}