import 'dart:io';
import 'dart:math';

void menuOperaciones() {
  print('''
Selecciona una operación:
1. Suma
2. Resta
3. Multiplicación
4. División
5. Módulo
6. Cuadrado
7. Raíz cuadrada
8. Potencia
9. Porcentaje
10. Número aleatorio
''');

  stdout.write("Opción: ");
  int opcion = int.parse(stdin.readLineSync()!);

  double a, b;
  switch (opcion) {
    case 1:
      stdout.write("A: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("B: ");
      b = double.parse(stdin.readLineSync()!);
      print("Resultado: ${a + b}");
      break;
    case 2:
      stdout.write("A: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("B: ");
      b = double.parse(stdin.readLineSync()!);
      print("Resultado: ${a - b}");
      break;
    case 3:
      stdout.write("A: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("B: ");
      b = double.parse(stdin.readLineSync()!);
      print("Resultado: ${a * b}");
      break;
    case 4:
      stdout.write("A: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("B: ");
      b = double.parse(stdin.readLineSync()!);
      if (b == 0) {
        print("No se puede dividir por cero.");
      } else {
        print("Resultado: ${a / b}");
      }
      break;
    case 5:
      stdout.write("A: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("B: ");
      b = double.parse(stdin.readLineSync()!);
      print("Resultado: ${a % b}");
      break;
    case 6:
      stdout.write("Número: ");
      a = double.parse(stdin.readLineSync()!);
      print("Cuadrado: ${a * a}");
      break;
    case 7:
      stdout.write("Número: ");
      a = double.parse(stdin.readLineSync()!);
      print("Raíz cuadrada: ${sqrt(a)}");
      break;
    case 8:
      stdout.write("Base: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("Exponente: ");
      b = double.parse(stdin.readLineSync()!);
      print("Potencia: ${pow(a, b)}");
      break;
    case 9:
      stdout.write("Número: ");
      a = double.parse(stdin.readLineSync()!);
      stdout.write("Porcentaje (%): ");
      b = double.parse(stdin.readLineSync()!);
      print("Resultado: ${a * (b / 100)}");
      break;
    case 10:
      var random = Random();
      print("Número aleatorio entre 1 y 100: ${random.nextInt(100) + 1}");
      break;
    default:
      print("Opción no válida");
  }
}
