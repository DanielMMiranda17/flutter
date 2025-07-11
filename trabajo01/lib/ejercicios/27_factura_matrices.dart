import 'dart:io';

void facturaConMatrices() {
  List<List<dynamic>> inventario = [
    [1, "Arroz", 2500, true],
    [2, "Pan", 1000, false],
    [3, "Leche", 4000, true],
    [4, "Huevos", 5000, true],
    [5, "Queso", 3000, false],
    [6, "Azúcar", 3500, true],
    [7, "Sal", 1500, false],
    [8, "Café", 5500, true],
    [9, "Aceite", 6000, true],
    [10, "Chocolate", 4500, false],
  ];

  List<List<dynamic>> pedido = [];
  bool sigue = true;
  int contador = 1;

  while (sigue && contador <= 10) {
    stdout.write("Digite el código del producto: ");
    int codigo = int.parse(stdin.readLineSync()!);

    var articulo = inventario.firstWhere(
      (item) => item[0] == codigo,
      orElse: () => [],
    );

    if (articulo.isEmpty) {
      print("Producto inexistente.");
      continue;
    }

    stdout.write("Cantidad a comprar: ");
    int cantidad = int.parse(stdin.readLineSync()!);

    int precioUnitario = articulo[2];
    bool aplicaIVA = articulo[3];
    double montoIVA = aplicaIVA ? precioUnitario * 0.19 * cantidad : 0;
    double subtotal = (precioUnitario * cantidad) + montoIVA;

    pedido.add([
      contador,
      articulo[0],
      articulo[1],
      cantidad,
      precioUnitario,
      montoIVA,
      subtotal
    ]);
    contador++;

    stdout.write("¿Desea añadir otro producto? (s/n): ");
    sigue = stdin.readLineSync()!.toLowerCase() == 's';
  }

  print("\n===== FACTURA =====");
  print("No. | ID | Producto | Cantidad | Precio U. | IVA | Total");
  for (var fila in pedido) {
    print(fila.join(" | "));
  }
}
