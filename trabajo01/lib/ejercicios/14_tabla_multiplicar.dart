import 'dart:io';

void tablaMultiplicar() {
  stdout.write("Digite el número para generar su tabla de multiplicar: ");
  int base = int.parse(stdin.readLineSync()!);

  print("\nTabla del $base:\n");

  for (int factor = 1; factor <= 10; factor++) {
    int resultado = base * factor;
    print("$base × $factor = $resultado");
  }
}
