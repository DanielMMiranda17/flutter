void vectorMatriz() {
  List<String> encabezado = ["Nombre", "Apellido", "Edad", "Estado", "Teléfono"];
  List<List<String>> datos = [
    ["Juan", "Pérez", "21", "Soltero", "123456789"],
    ["Ana", "López", "20", "Casada", "987654321"],
    ["Carlos", "Ríos", "22", "Soltero", "111222333"],
    ["Lucía", "Moreno", "19", "Soltera", "444555666"]
  ];

  print(encabezado.join(" | "));
  for (var fila in datos) {
    print(fila.join(" | "));
  }
}
