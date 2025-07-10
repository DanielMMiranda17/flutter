import 'dart:io';

void divisionCondicional() {
  stdout.write("Ingrese el numerador: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el denominador: ");
  double b = double.parse(stdin.readLineSync()!);

  if (b == 0) {
    print("Imposible la división por 0");
  } else {
    double resultado = a / b;
    print("La división del número $a entre el número $b es: $resultado");
  }
}
