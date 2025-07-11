import 'dart:io';

void multiplicacionSecuencial() {
  stdout.write("Escriba el primer valor a multiplicar: ");
  double numeroUno = double.parse(stdin.readLineSync()!);

  stdout.write("Escriba el segundo valor a multiplicar: ");
  double numeroDos = double.parse(stdin.readLineSync()!);

  double resultado = numeroUno * numeroDos;

  print("\n Resultado de la multiplicación:");
  print("$numeroUno x $numeroDos = $resultado");
}
