import 'dart:io';

void combinacionColores() {
  print(" Opciones de colores:");
  print("1️ Amarillo\n2️ Azul\n3️ Rojo");

  stdout.write("Seleccione el primer color (número): ");
  int primerColor = int.parse(stdin.readLineSync()!);

  stdout.write("Seleccione el segundo color (número): ");
  int segundoColor = int.parse(stdin.readLineSync()!);

  String mezcla;

  if ((primerColor == 1 && segundoColor == 2) || (primerColor == 2 && segundoColor == 1)) {
    mezcla = " Verde";
  } else if ((primerColor == 1 && segundoColor == 3) || (primerColor == 3 && segundoColor == 1)) {
    mezcla = " Naranja";
  } else if ((primerColor == 2 && segundoColor == 3) || (primerColor == 3 && segundoColor == 2)) {
    mezcla = " Violeta";
  } else if (primerColor == segundoColor) {
    mezcla = " Mismo color seleccionado";
  } else {
    mezcla = " Combinación no reconocida";
  }

  print("\n Resultado de la mezcla: $mezcla");
}
