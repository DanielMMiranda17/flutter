import 'dart:io';
import 'dart:math';

void guayabita() {
  stdout.write("¿Cuántos jugadores van a jugar? ");
  int jugadores = int.parse(stdin.readLineSync()!);
  int acumulado = 0;

  List<String> nombres = [];
  for (int i = 0; i < jugadores; i++) {
    stdout.write("Nombre del jugador ${i + 1}: ");
    nombres.add(stdin.readLineSync()!);
  }

  while (acumulado >= 0) {
    for (var jugador in nombres) {
      print("\nTurno de $jugador");
      print("Acumulado actual: $acumulado");

      int tiro1 = Random().nextInt(6) + 1;
      print("Primer tiro: $tiro1");

      if (tiro1 == 1 || tiro1 == 6) {
        print("$jugador pierde y debe poner 1 moneda al acumulado.");
        acumulado += 1;
        continue;
      }

      stdout.write("¿Cuánto desea apostar? ");
      int apuesta = int.parse(stdin.readLineSync()!);

      if (apuesta > acumulado) {
        print("No puede apostar más de lo que hay en el acumulado.");
        continue;
      }

      int tiro2 = Random().nextInt(6) + 1;
      print("Segundo tiro: $tiro2");

      if (tiro2 > tiro1) {
        print("¡Ganó! Se lleva $apuesta del acumulado.");
        acumulado -= apuesta;
      } else {
        print("Perdió. Agrega $apuesta al acumulado.");
        acumulado += apuesta;
      }

      if (acumulado <= 0) {
        print("Se acabó el juego, no hay más monedas en el acumulado.");
        return;
      }
    }
  }
}
