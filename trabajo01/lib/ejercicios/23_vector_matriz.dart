void vectorMatriz() {
  List<String> titulos = ["Nombre", "Apellido", "Edad", "Estado Civil", "Teléfono"];
  List<List<String>> registros = [
    ["Juan", "Pérez", "21", "Soltero", "123456789"],
    ["Ana", "López", "20", "Casada", "987654321"],
    ["Carlos", "Ríos", "22", "Soltero", "111222333"],
    ["Lucía", "Moreno", "19", "Soltera", "444555666"]
  ];

  print(titulos.join(" || "));
  for (var fila in registros) {
    print(fila.join(" || "));
  }
}
