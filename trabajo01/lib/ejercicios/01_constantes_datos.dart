void mostrarInfoPersonal() {
  const String nombreUsuario = "Daniel";
  const String genero = "Masculino";
  const int anios = 25;
  const double sueldo = 1525000.75;
  const bool poseeVehiculo = true;

  print(" Nombre completo: $nombreUsuario");
  print(" Género: $genero");
  print(" Edad: $anios años");
  print(" Sueldo mensual: \$${sueldo.toStringAsFixed(2)}");
  print(" ¿Posee vehículo?: ${poseeVehiculo ? 'Sí tiene' : 'No tiene'}");
}
