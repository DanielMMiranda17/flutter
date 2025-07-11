import 'dart:io';

void funcionesSuma() {
  while (true) {
    print("\ MENÚ DE SUMAS ");
    print("1. Suma sin parámetros ni retorno");
    print("2. Suma con parámetros sin retorno");
    print("3. Suma sin parámetros con retorno");
    print("4. Suma con parámetros y retorno");
    print("0. Salir");
    stdout.write("Elija una opción: ");
    int opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 0) break;

    switch (opcion) {
      case 1:
        void sumaSinParamsSinRetorno() {
          int x = 3, y = 4;
          print("Resultado: ${x + y}");
        }
        sumaSinParamsSinRetorno();
        break;

      case 2:
        void sumaConParamsSinRetorno(int x, int y) {
          print("Resultado: ${x + y}");
        }
        sumaConParamsSinRetorno(5, 6);
        break;

      case 3:
        int sumaSinParamsConRetorno() {
          int x = 7, y = 8;
          return x + y;
        }
        print("Resultado: ${sumaSinParamsConRetorno()}");
        break;

      case 4:
        int sumaConParamsConRetorno(int x, int y) => x + y;
        print("Resultado: ${sumaConParamsConRetorno(9, 10)}");
        break;

      default:
        print("Opción no válida, intente de nuevo.");
    }
  }
}
