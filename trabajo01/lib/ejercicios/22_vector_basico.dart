void vectorBasico() {
  var numeros = List.generate(10, (index) => index + 1);

  print("Elementos del vector con sus índices:");
  for (var i = 0; i < numeros.length; i++) {
    print("Posición [$i] → Valor: ${numeros[i]}");
  }
}
