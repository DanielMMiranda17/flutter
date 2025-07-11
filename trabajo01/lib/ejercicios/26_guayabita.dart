import 'dart:io';
import 'dart:math';

void guayabita() {
  stdout.write("Ingrese la cantidad de participantes: ");
  int totalJugadores = int.parse(stdin.readLineSync()!);
  int fondo = 0;

  List<String> jugadores = [];
  for (int i = 1; i <= totalJugadores; i++) {
    stdout.write("Nombre del participante $i: ");
    jugadores.add(stdin.readLineSync()!);
  }

  final generador = Random();

  while (true) {
    for (var jugador in jugadores) {
      print("\nTurno de: $jugador");
      print("Monedas acumuladas en el fondo: $fondo");

      int dado1 = generador.nextInt(6) + 1;
      print("Tirada inicial: $dado1");

      if (dado1 == 1 || dado1 == 6) {
        print("$jugador pierde esta ronda y debe aportar 1 moneda al fondo.");
        fondo += 1;
        continue;
      }

      stdout.write("¿Cuántas monedas desea apostar? ");
      int apuesta = int.parse(stdin.readLineSync()!);

      if (apuesta > fondo) {
        print("No puede apostar más monedas que las acumuladas ($fondo). Intente de nuevo.");
        continue;
      }

      int dado2 = generador.nextInt(6) + 1;
      print("Segunda tirada: $dado2");

      if (dado2 > dado1) {
        print("¡Felicidades, ganó la apuesta! Se lleva $apuesta monedas del fondo.");
        fondo -= apuesta;
      } else {
        print("Perdió la apuesta. Agrega $apuesta monedas al fondo.");
        fondo += apuesta;
      }

      if (fondo <= 0) {
        print("No quedan monedas en el fondo. ¡Juego terminado!");
        return;
      }
    }
  }
}
