import 'dart:math';

void dadosParques() {
  var random = Random();
  int intentos = 0;

  while (intentos < 3) {
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;

    print("Dados: $dado1 y $dado2");

    if (dado1 == dado2) {
      intentos++;
      if (intentos == 3) {
        print("¡Saca una ficha!");
        break;
      } else {
        print("Lanzar de nuevo");
      }
    } else {
      print("¡Lanza de nuevo!");
      break;
    }
  }
}
