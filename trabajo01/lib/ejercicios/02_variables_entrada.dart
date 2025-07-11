import 'dart:io';

void capturarDatosUsuario() {
  stdout.write("¿Cuál es tu nombre?: ");
  String? nombrePersona = stdin.readLineSync();

  stdout.write("¿Cuál es tu género?: ");
  String? genero = stdin.readLineSync();

  stdout.write("¿Cuántos años tienes?: ");
  int anios = int.parse(stdin.readLineSync()!);

  stdout.write("¿Cuál es tu ingreso mensual?: ");
  double ingreso = double.parse(stdin.readLineSync()!);

  stdout.write("¿Posees un vehículo? (sí/no): ");
  String? respuestaVehiculo = stdin.readLineSync();

  
  print(" Nombre: $nombrePersona");
  print(" Género: $genero");
  print(" Edad: $anios años");
  print(" Ingreso: \$${ingreso.toStringAsFixed(2)}");
  print(" Vehículo propio: ${respuestaVehiculo!.trim().toLowerCase() == 'sí' ? 'Sí tiene' : 'No tiene'}");
}
