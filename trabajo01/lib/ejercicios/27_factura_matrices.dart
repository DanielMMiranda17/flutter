import 'dart:io';

void facturaConMatrices() {
  List<List<dynamic>> productos = [
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

  List<List<dynamic>> factura = [];

  bool continuar = true;
  int item = 1;
  while (continuar && item <= 10) {
    stdout.write("Ingrese ID del producto: ");
    int id = int.parse(stdin.readLineSync()!);

    var producto = productos.firstWhere((p) => p[0] == id, orElse: () => []);

    if (producto.isEmpty) {
      print("Producto no encontrado.");
      continue;
    }

    stdout.write("¿Cuántos desea llevar?: ");
    int cantidad = int.parse(stdin.readLineSync()!);

    int valorUnidad = producto[2];
    bool tieneIVA = producto[3];
    double iva = tieneIVA ? valorUnidad * 0.19 * cantidad : 0;
    double total = (valorUnidad * cantidad) + iva;

    factura.add([
      item,
      producto[0],
      producto[1],
      cantidad,
      valorUnidad,
      iva,
      total
    ]);
    item++;

    stdout.write("¿Desea ingresar otro producto? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase() == 's';
  }

  print("\nFACTURA:");
  print("Item | ID | Producto | Cant | V.Unit | IVA | Total");
  for (var fila in factura) {
    print(fila.join(" | "));
  }
}
