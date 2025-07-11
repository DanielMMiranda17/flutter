import 'dart:io';

void divisionCondicional() {
  stdout.write("Digite el valor del numerador: ");
  double dividendo = double.parse(stdin.readLineSync()!);

  stdout.write("Digite el valor del denominador: ");
  double divisor = double.parse(stdin.readLineSync()!);

  if (divisor == 0) {
    print("No se puede dividir entre cero, Hazlo otra vez.");
  } else {
    double cociente = dividendo / divisor;
    print("\n➗ Resultado de la división:");
    print("$dividendo ÷ $divisor = $cociente");
  }
}
