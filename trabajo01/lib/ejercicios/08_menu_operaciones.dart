import 'dart:io';
import 'dart:math';

void menuOperaciones() {
  print('''
 MENÚ DE OPERACIONES DISPONIBLES
-----------------------------------
1️  Sumar
2️  Restar
3️  Multiplicar
4️  Dividir
5️  Módulo (Residuo)
6️  Elevar al cuadrado
7️  Raíz cuadrada
8️  Potencia
9️  Porcentaje de un número
10  Número aleatorio (1 - 100)
''');

  stdout.write(" Elige una opción (1-10): ");
  int eleccion = int.parse(stdin.readLineSync()!);

  double x, y;
  switch (eleccion) {
    case 1:
      stdout.write(" Primer número: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Segundo número: ");
      y = double.parse(stdin.readLineSync()!);
      print(" Resultado de la suma: ${x + y}");
      break;
    case 2:
      stdout.write(" Número base: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Número a restar: ");
      y = double.parse(stdin.readLineSync()!);
      print(" Resultado de la resta: ${x - y}");
      break;
    case 3:
      stdout.write(" Primer número: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Segundo número: ");
      y = double.parse(stdin.readLineSync()!);
      print(" Resultado de la multiplicación: ${x * y}");
      break;
    case 4:
      stdout.write(" Dividendo: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Divisor: ");
      y = double.parse(stdin.readLineSync()!);
      if (y == 0) {
        print(" Error: No se puede dividir por cero.");
      } else {
        print(" Resultado de la división: ${x / y}");
      }
      break;
    case 5:
      stdout.write(" Número A: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Número B: ");
      y = double.parse(stdin.readLineSync()!);
      print(" Residuo de A % B: ${x % y}");
      break;
    case 6:
      stdout.write(" Número a elevar: ");
      x = double.parse(stdin.readLineSync()!);
      print(" Cuadrado de $x: ${x * x}");
      break;
    case 7:
      stdout.write(" Número para raíz cuadrada: ");
      x = double.parse(stdin.readLineSync()!);
      print(" Raíz cuadrada de $x: ${sqrt(x)}");
      break;
    case 8:
      stdout.write(" Base: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Exponente: ");
      y = double.parse(stdin.readLineSync()!);
      print(" Resultado de la potencia: ${pow(x, y)}");
      break;
    case 9:
      stdout.write(" Número base: ");
      x = double.parse(stdin.readLineSync()!);
      stdout.write(" Porcentaje (%): ");
      y = double.parse(stdin.readLineSync()!);
      print(" $y% de $x es: ${x * (y / 100)}");
      break;
    case 10:
      var aleatorio = Random();
      print(" Tu número aleatorio entre 1 y 100 es: ${aleatorio.nextInt(100) + 1}");
      break;
    default:
      print(" Opción no válida. Intenta de nuevo.");
  }
}
