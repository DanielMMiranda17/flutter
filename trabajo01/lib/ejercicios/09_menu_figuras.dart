import 'dart:io';
import 'dart:math';

void menuFiguras() {
  print("FIGURAS GEOMÉTRICAS DISPONIBLES");
  print("1 - Triángulo");
  print("2 - Rectángulo");
  print("3 - Círculo");

  stdout.write("Ingrese el número correspondiente a la figura: ");
  int seleccion = int.parse(stdin.readLineSync()!);

  switch (seleccion) {
    case 1:
      stdout.write("Ingrese la base del triángulo: ");
      double b = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la altura del triángulo: ");
      double h = double.parse(stdin.readLineSync()!);

      stdout.write("Lado A: ");
      double ladoA = double.parse(stdin.readLineSync()!);
      stdout.write("Lado B: ");
      double ladoB = double.parse(stdin.readLineSync()!);
      stdout.write("Lado C: ");
      double ladoC = double.parse(stdin.readLineSync()!);

      double areaTri = (b * h) / 2;
      double periTri = ladoA + ladoB + ladoC;

      print("Resultado:");
      print("Área del triángulo: $areaTri unidades cuadradas");
      print("Perímetro del triángulo: $periTri unidades");
      break;

    case 2:
      stdout.write("Lado mayor (largo): ");
      double largo = double.parse(stdin.readLineSync()!);
      stdout.write("Lado menor (ancho): ");
      double ancho = double.parse(stdin.readLineSync()!);

      double areaRect = largo * ancho;
      double periRect = 2 * (largo + ancho);

      print("Resultado:");
      print("Área del rectángulo: $areaRect unidades cuadradas");
      print("Perímetro del rectángulo: $periRect unidades");
      break;

    case 3:
      stdout.write("Ingrese el radio del círculo: ");
      double r = double.parse(stdin.readLineSync()!);

      double areaCirc = pi * pow(r, 2);
      double periCirc = 2 * pi * r;

      print("Resultado:");
      print("Área del círculo: ${areaCirc.toStringAsFixed(2)} unidades cuadradas");
      print("Perímetro del círculo: ${periCirc.toStringAsFixed(2)} unidades");
      break;

    default:
      print("La opción ingresada no es válida.");
  }
}
