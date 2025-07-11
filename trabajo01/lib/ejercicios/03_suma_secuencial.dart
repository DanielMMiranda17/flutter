import 'dart:io';

void SumaSecuencial() {
  stdout.write("Digita el primer valor: ");
  double primerValor = double.parse(stdin.readLineSync()!);

  stdout.write("Digita el segundo valor: ");
  double segundoValor = double.parse(stdin.readLineSync()!);

  double resultado = primerValor + segundoValor;

  print("\n✅ Resultado:");
  print("$primerValor + $segundoValor = $resultado");
}
