import 'dart:io';

void tipoTriangulo() {
  print("Seleccione el tipo de datos que desea ingresar:");
  print("1 - Lados");
  print("2 - Ángulos");

  int entrada = int.parse(stdin.readLineSync()!);

  if (entrada == 1) {
    stdout.write("Ingrese la medida del primer lado: ");
    double ladoA = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el segundo lado: ");
    double ladoB = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el tercer lado: ");
    double ladoC = double.parse(stdin.readLineSync()!);

    bool ladosValidos = ladoA > 0 && ladoB > 0 && ladoC > 0;
    bool desigualdadTriangular = (ladoA + ladoB > ladoC) &&
                                 (ladoA + ladoC > ladoB) &&
                                 (ladoB + ladoC > ladoA);

    if (!ladosValidos || !desigualdadTriangular) {
      print("Las medidas no corresponden a un triángulo válido.");
      return;
    }

    if (ladoA == ladoB && ladoB == ladoC) {
      print("Es un triángulo equilátero.");
    } else if (ladoA == ladoB || ladoB == ladoC || ladoA == ladoC) {
      print("Es un triángulo isósceles.");
    } else {
      print("Es un triángulo escaleno.");
    }
  } else if (entrada == 2) {
    stdout.write("Ángulo A: ");
    double angA = double.parse(stdin.readLineSync()!);
    stdout.write("Ángulo B: ");
    double angB = double.parse(stdin.readLineSync()!);
    stdout.write("Ángulo C: ");
    double angC = double.parse(stdin.readLineSync()!);

    double totalAngulos = angA + angB + angC;
    bool angulosValidos = angA > 0 && angB > 0 && angC > 0 && totalAngulos == 180;

    if (!angulosValidos) {
      print("Los ángulos no forman un triángulo válido.");
      return;
    }

    if (angA == 90 || angB == 90 || angC == 90) {
      print("Es un triángulo rectángulo.");
    } else if (angA < 90 && angB < 90 && angC < 90) {
      print("Es un triángulo acutángulo.");
    } else {
      print("Es un triángulo obtusángulo.");
    }
  } else {
    print("La opción seleccionada no es válida.");
  }
}
