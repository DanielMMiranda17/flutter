import 'dart:io';

void tipoTriangulo() {
  print("¿Desea ingresar lados (1) o ángulos (2)?");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    stdout.write("Lado 1: ");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Lado 2: ");
    double b = double.parse(stdin.readLineSync()!);
    stdout.write("Lado 3: ");
    double c = double.parse(stdin.readLineSync()!);

    if (a <= 0 || b <= 0 || c <= 0 || (a + b <= c || a + c <= b || b + c <= a)) {
      print("No es un triángulo válido.");
      return;
    }

    if (a == b && b == c) {
      print("Triángulo equilátero");
    } else if (a == b || b == c || a == c) {
      print("Triángulo isósceles");
    } else {
      print("Triángulo escaleno");
    }
  } else if (opcion == 2) {
    stdout.write("Ángulo 1: ");
    double a1 = double.parse(stdin.readLineSync()!);
    stdout.write("Ángulo 2: ");
    double a2 = double.parse(stdin.readLineSync()!);
    stdout.write("Ángulo 3: ");
    double a3 = double.parse(stdin.readLineSync()!);

    double suma = a1 + a2 + a3;

    if (a1 <= 0 || a2 <= 0 || a3 <= 0 || suma != 180) {
      print("No es un triángulo válido.");
      return;
    }

    if (a1 == 90 || a2 == 90 || a3 == 90) {
      print("Triángulo rectángulo");
    } else if (a1 < 90 && a2 < 90 && a3 < 90) {
      print("Triángulo acutángulo");
    } else {
      print("Triángulo obtusángulo");
    }
  } else {
    print("Opción no válida.");
  }
}
