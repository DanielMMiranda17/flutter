import 'dart:io';
import 'dart:math';

void cilindroConTapa() {
  stdout.write("Radio: ");
  double radio = double.parse(stdin.readLineSync()!);

  stdout.write("Altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  if (radio <= 0 || altura <= 0) {
    print("Dimensiones inválidas.");
    return;
  }

  double areaLateral = 2 * pi * radio * altura;
  double areaTapa = pi * pow(radio, 2);
  double areaTotal = areaLateral + 2 * areaTapa;
  double volumen = areaTapa * altura;

  print("Área total: ${areaTotal.toStringAsFixed(2)} unidades²");
  print("Volumen: ${volumen.toStringAsFixed(2)} unidades³");
}
