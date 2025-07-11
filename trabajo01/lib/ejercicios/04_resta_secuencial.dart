import 'dart:io';

void restaSecuencial() {
  stdout.write("Digita el número inicial: ");
  double primerNumero = double.parse(stdin.readLineSync()!);

  stdout.write("Digita el número a restar: ");
  double segundoNumero = double.parse(stdin.readLineSync()!);

  double resultadoResta = primerNumero - segundoNumero;

  print("\n🔻 Resultado de la resta:");
  print("$primerNumero - $segundoNumero = $resultadoResta");
}
