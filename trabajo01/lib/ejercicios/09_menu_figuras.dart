import 'dart:io';
import 'dart:math';

void menuFiguras() {
  print("Seleccione una figura:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");

  stdout.write("Opción: ");
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      stdout.write("Base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Altura: ");
      double altura = double.parse(stdin.readLineSync()!);
      stdout.write("Lado 1: ");
      double lado1 = double.parse(stdin.readLineSync()!);
      stdout.write("Lado 2: ");
      double lado2 = double.parse(stdin.readLineSync()!);
      stdout.write("Lado 3: ");
      double lado3 = double.parse(stdin.readLineSync()!);
      double area = (base * altura) / 2;
      double perimetro = lado1 + lado2 + lado3;
      print("Área: $area unidades²");
      print("Perímetro: $perimetro unidades");
      break;
    case 2:
      stdout.write("Largo: ");
      double largo = double.parse(stdin.readLineSync()!);
      stdout.write("Ancho: ");
      double ancho = double.parse(stdin.readLineSync()!);
      double area = largo * ancho;
      double perimetro = 2 * (largo + ancho);
      print("Área: $area unidades²");
      print("Perímetro: $perimetro unidades");
      break;
    case 3:
      stdout.write("Radio: ");
      double radio = double.parse(stdin.readLineSync()!);
      double area = pi * pow(radio, 2);
      double perimetro = 2 * pi * radio;
      print("Área: ${area.toStringAsFixed(2)} unidades²");
      print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      break;
    default:
      print("Opción inválida.");
  }
}
