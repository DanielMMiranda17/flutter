import 'dart:math';

void dadosParques() {
  final rng = Random();
  int repeticiones = 0;

  while (repeticiones < 3) {
    int primerDado = rng.nextInt(6) + 1;
    int segundoDado = rng.nextInt(6) + 1;

    print("Resultado: $primerDado - $segundoDado");

    if (primerDado == segundoDado) {
      repeticiones++;
      if (repeticiones == 3) {
        print("¡Tienes luz verde para sacar ficha!");
        break;
      } else {
        print("¡Par otra vez! Lanza de nuevo...");
      }
    } else {
      print("No sacaste par. Turno perdido.");
      break;
    }
  }
}
