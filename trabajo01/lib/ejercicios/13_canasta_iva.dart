import 'dart:io';

void canastaIVA() {
  stdout.write("Ingrese el nombre del producto: ");
  String? producto = stdin.readLineSync();

  stdout.write("Precio por unidad: ");
  double precioUnitario = double.parse(stdin.readLineSync()!);

  stdout.write("Número de unidades: ");
  int unidades = int.parse(stdin.readLineSync()!);

  stdout.write("¿Pertenece a la canasta básica? (si/no): ");
  String? perteneceCanasta = stdin.readLineSync();

  double subtotal = precioUnitario * unidades;
  double totalFinal = (perteneceCanasta?.trim().toLowerCase() == 'si')
      ? subtotal
      : subtotal * 1.19;

  print("El monto total a pagar por '$producto' es: \$${totalFinal.toStringAsFixed(2)}");
}
