void constantesDatos() {
  const String nombre = "Daniel";
  const String sexo = "Masculino";
  const int edad = 25;
  const double salario = 1525000.75;
  const bool tieneVehiculo = true;

  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo ? 'Sí' : 'No'}");
}
