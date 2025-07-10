import 'dart:io';

void funcionesSuma() {
  while (true) {
    print("\nMENÚ DE SUMA");
    print("1. Sin parámetros y sin retorno");
    print("2. Con parámetros y sin retorno");
    print("3. Sin parámetros y con retorno");
    print("4. Con parámetros y con retorno");
    print("0. Salir");
    stdout.write("Opción: ");
    int op = int.parse(stdin.readLineSync()!);

    if (op == 0) break;

    switch (op) {
      case 1:
        void sinParametrosSinRetorno() {
          int a = 3, b = 4;
          print("La suma es: ${a + b}");
        }

        sinParametrosSinRetorno();
        break;
      case 2:
        void conParametrosSinRetorno(int a, int b) {
          print("La suma es: ${a + b}");
        }

        conParametrosSinRetorno(5, 6);
        break;
      case 3:
        int sinParametrosConRetorno() {
          int a = 7, b = 8;
          return a + b;
        }

        print("La suma es: ${sinParametrosConRetorno()}");
        break;
      case 4:
        int conParametrosConRetorno(int a, int b) {
          return a + b;
        }

        print("La suma es: ${conParametrosConRetorno(9, 10)}");
        break;
      default:
        print("Opción inválida");
    }
  }
}
