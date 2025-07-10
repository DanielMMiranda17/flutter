import 'dart:io';

void canastaIVA() {
  stdout.write("Nombre del artículo: ");
  String? articulo = stdin.readLineSync();

  stdout.write("Valor unitario: ");
  double valor = double.parse(stdin.readLineSync()!);

  stdout.write("Cantidad: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  stdout.write("¿Es de la canasta familiar? (si/no): ");
  String? esCanasta = stdin.readLineSync();

  double total = valor * cantidad;
  if (esCanasta!.toLowerCase() != 'si') {
    total *= 1.19;
  }

  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}
