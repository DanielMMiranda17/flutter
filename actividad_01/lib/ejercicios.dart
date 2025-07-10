import 'dart:io';
import 'dart:math';


void main() {
  // Ejecutar los ejercicios según sea necesario
  ejercicio1_1();
  // ejercicio1_2();
  // ejercicio1_3();
  // ... y así con los demás ejercicios
}

// 1.1. Constantes, tipos de datos y concatenación
void ejercicio1_1() {
  const String nombre = 'Juan Pérez';
  const String sexo = 'Masculino';
  const int edad = 30;
  const double salario = 1250.75;
  const bool tieneVehiculo = true;

  print('Nombre: $nombre');
  print('Sexo: $sexo');
  print('Edad: $edad años');
  print('Salario: \$${salario.toStringAsFixed(2)}');
  print('Tiene vehículo: ${tieneVehiculo ? 'Sí' : 'No'}');}

// 1.2. Variables
void ejercicio1_2() {
  print('Ingrese su nombre:');
  String nombre = stdin.readLineSync()!;
  
  print('Ingrese su sexo:');
  String sexo = stdin.readLineSync()!;
  
  print('Ingrese su edad:');
  int edad = int.parse(stdin.readLineSync()!);
  
  print('Ingrese su salario (incluyendo centavos):');
  double salario = double.parse(stdin.readLineSync()!);
  
  print('¿Tiene vehículo de transporte? (true/false):');
  bool tieneVehiculo = stdin.readLineSync()!.toLowerCase() == 'true';

  print('\nDatos ingresados:');
  print('Nombre: $nombre');
  print('Sexo: $sexo');
  print('Edad: $edad años');
  print('Salario: \$${salario.toStringAsFixed(2)}');
  print('Tiene vehículo: ${tieneVehiculo ? 'Sí' : 'No'}');
}

// 1.3. Estructura Secuencial - Suma
void ejercicio1_3() {
  print('Ingrese el primer número:');
  double a = double.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  double b = double.parse(stdin.readLineSync()!);
  
  double resultado = a + b;
  print('La suma del número $a con el número $b es: $resultado');
}

// 1.4. Estructura Secuencial - Resta
void ejercicio1_4() {
  print('Ingrese el primer número:');
  double a = double.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  double b = double.parse(stdin.readLineSync()!);
  
  double resultado = a - b;
  print('La diferencia del número $a con el número $b es: $resultado');
}

// 1.5. Estructura Secuencial - Multiplicación
void ejercicio1_5() {
  print('Ingrese el primer número:');
  double a = double.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  double b = double.parse(stdin.readLineSync()!);
  
  double resultado = a * b;
  print('El producto del número $a con el número $b es: $resultado');
}

// 1.6. Estructuras Condicionales - División
void ejercicio1_6() {
  print('Ingrese el numerador:');
  double a = double.parse(stdin.readLineSync()!);
  
  print('Ingrese el denominador:');
  double b = double.parse(stdin.readLineSync()!);
  
  if (b == 0) {
    print('Imposible la división por 0');
  } else {
    double resultado = a / b;
    print('La división del número $a entre el número $b es: $resultado');
  }
}

// 1.7. Estructuras Condicionales - Combinación de colores
void ejercicio1_7() {
  print('Menú de colores:');
  print('1. Amarillo');
  print('2. Azul');
  print('3. Rojo');
  
  print('Ingrese el primer número (1-3):');
  int color1 = int.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número (1-3):');
  int color2 = int.parse(stdin.readLineSync()!);
  
  String combinacion;
  
  if (color1 < 1 || color1 > 3 || color2 < 1 || color2 > 3) {
    combinacion = 'inválida (números fuera de rango)';
  } else if (color1 == color2) {
    combinacion = 'mismo color (${colorName(color1)})';
  } else {
    if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
      combinacion = 'verde';
    } else if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
      combinacion = 'naranja';
    } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
      combinacion = 'morado';
    } else {
      combinacion = 'desconocida';
    }
  }
  
  print('Su combinación es $combinacion');
}

String colorName(int color) {
  switch (color) {
    case 1: return 'amarillo';
    case 2: return 'azul';
    case 3: return 'rojo';
    default: return 'desconocido';
  }
}

// 1.8. Menú de operaciones matemáticas
void ejercicio1_8() {
  print('Menú de operaciones matemáticas:');
  print('1. Suma');
  print('2. Resta');
  print('3. Multiplicación');
  print('4. División');
  print('5. Módulo');
  print('6. Cuadrado');
  print('7. Raíz cuadrada');
  print('8. Potencia');
  print('9. Porcentaje');
  print('10. Número aleatorio');
  
  print('Seleccione una operación (1-10):');
  int opcion = int.parse(stdin.readLineSync()!);
  
  switch (opcion) {
    case 1:
      print('Ingrese dos números para sumar:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      print('Resultado: ${a + b}');
      break;
    case 2:
      print('Ingrese dos números para restar:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      print('Resultado: ${a - b}');
      break;
    case 3:
      print('Ingrese dos números para multiplicar:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      print('Resultado: ${a * b}');
      break;
    case 4:
      print('Ingrese numerador y denominador:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      if (b == 0) {
        print('Error: división por cero');
      } else {
        print('Resultado: ${a / b}');
      }
      break;
    case 5:
      print('Ingrese dos números para módulo:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      print('Resultado: ${a % b}');
      break;
    case 6:
      print('Ingrese un número para calcular su cuadrado:');
      double a = double.parse(stdin.readLineSync()!);
      print('Resultado: ${a * a}');
      break;
    case 7:
      print('Ingrese un número para calcular su raíz cuadrada:');
      double a = double.parse(stdin.readLineSync()!);
      if (a < 0) {
        print('Error: raíz de número negativo');
      } else {
        print('Resultado: ${sqrt(a)}');
      }
      break;
    case 8:
      print('Ingrese base y exponente:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      print('Resultado: ${pow(a, b)}');
      break;
    case 9:
      print('Ingrese el número y el porcentaje:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      print('Resultado: ${a * (b / 100)}');
      break;
    case 10:
      print('Ingrese el rango mínimo y máximo:');
      int min = int.parse(stdin.readLineSync()!);
      int max = int.parse(stdin.readLineSync()!);
      Random random = Random();
      print('Número aleatorio: ${min + random.nextInt(max - min + 1)}');
      break;
    default:
      print('Opción inválida');
  }
}

// 1.9. Áreas y perímetros de figuras
void ejercicio1_9() {
  print('Menú de figuras:');
  print('1. Triángulo');
  print('2. Rectángulo');
  print('3. Círculo');
  
  print('Seleccione una figura (1-3):');
  int figura = int.parse(stdin.readLineSync()!);
  
  switch (figura) {
    case 1:
      print('Ingrese base y altura del triángulo:');
      double base = double.parse(stdin.readLineSync()!);
      double altura = double.parse(stdin.readLineSync()!);
      if (base <= 0 || altura <= 0) {
        print('Error: valores deben ser positivos');
        return;
      }
      print('Ingrese los 3 lados del triángulo:');
      double lado1 = double.parse(stdin.readLineSync()!);
      double lado2 = double.parse(stdin.readLineSync()!);
      double lado3 = double.parse(stdin.readLineSync()!);
      if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
        print('Error: lados deben ser positivos');
        return;
      }
      double area = (base * altura) / 2;
      double perimetro = lado1 + lado2 + lado3;
      print('Triángulo:');
      print('Área: ${area.toStringAsFixed(2)} unidades cuadradas');
      print('Perímetro: ${perimetro.toStringAsFixed(2)} unidades');
      break;
    case 2:
      print('Ingrese base y altura del rectángulo:');
      double base = double.parse(stdin.readLineSync()!);
      double altura = double.parse(stdin.readLineSync()!);
      if (base <= 0 || altura <= 0) {
        print('Error: valores deben ser positivos');
        return;
      }
      double area = base * altura;
      double perimetro = 2 * (base + altura);
      print('Rectángulo:');
      print('Área: ${area.toStringAsFixed(2)} unidades cuadradas');
      print('Perímetro: ${perimetro.toStringAsFixed(2)} unidades');
      break;
    case 3:
      print('Ingrese el radio del círculo:');
      double radio = double.parse(stdin.readLineSync()!);
      if (radio <= 0) {
        print('Error: radio debe ser positivo');
        return;
      }
      double area = pi * pow(radio, 2);
      double perimetro = 2 * pi * radio;
      print('Círculo:');
      print('Área: ${area.toStringAsFixed(2)} unidades cuadradas');
      print('Perímetro: ${perimetro.toStringAsFixed(2)} unidades');
      break;
    default:
      print('Opción inválida');
  }
}

// 1.10. Cilindro
void ejercicio1_10() {
  print('Ingrese el radio del cilindro:');
  double radio = double.parse(stdin.readLineSync()!);
  if (radio <= 0) {
    print('Error: radio debe ser positivo');
    return;
  }
  
  print('Ingrese la altura del cilindro:');
  double altura = double.parse(stdin.readLineSync()!);
  if (altura <= 0) {
    print('Error: altura debe ser positiva');
    return;
  }
  
  // Área superficial (con tapa)
  double areaSuperficial = 2 * pi * radio * (radio + altura);
  
  // Volumen
  double volumen = pi * pow(radio, 2) * altura;
  
  print('Cilindro con radio $radio y altura $altura:');
  print('Área superficial: ${areaSuperficial.toStringAsFixed(2)} unidades cuadradas');
  print('Volumen: ${volumen.toStringAsFixed(2)} unidades cúbicas');
}

// 1.11. Tipo de triángulo
void ejercicio1_11() {
  print('Seleccione método para determinar el triángulo:');
  print('1. Por ángulos');
  print('2. Por lados');
  
  int metodo = int.parse(stdin.readLineSync()!);
  
  switch (metodo) {
    case 1:
      print('Ingrese los 3 ángulos del triángulo (en grados):');
      double angulo1 = double.parse(stdin.readLineSync()!);
      double angulo2 = double.parse(stdin.readLineSync()!);
      double angulo3 = double.parse(stdin.readLineSync()!);
      
      if (angulo1 <= 0 || angulo2 <= 0 || angulo3 <= 0) {
        print('Error: ángulos deben ser positivos');
        return;
      }
      
      double suma = angulo1 + angulo2 + angulo3;
      if (suma != 180) {
        print('Error: la suma de los ángulos debe ser 180°');
        return;
      }
      
      // Determinar tipo por ángulos
      String tipoAngulo;
      if (angulo1 == 90 || angulo2 == 90 || angulo3 == 90) {
        tipoAngulo = 'rectángulo';
      } else if (angulo1 < 90 && angulo2 < 90 && angulo3 < 90) {
        tipoAngulo = 'acutángulo';
      } else {
        tipoAngulo = 'obtusángulo';
      }
      
      print('El triángulo es $tipoAngulo');
      break;
    case 2:
      print('Ingrese los 3 lados del triángulo:');
      double lado1 = double.parse(stdin.readLineSync()!);
      double lado2 = double.parse(stdin.readLineSync()!);
      double lado3 = double.parse(stdin.readLineSync()!);
      
      if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
        print('Error: lados deben ser positivos');
        return;
      }
      
      // Ordenar lados
      List<double> lados = [lado1, lado2, lado3];
      lados.sort();
      
      if (lados[0] + lados[1] <= lados[2]) {
        print('Error: no es un triángulo válido');
        return;
      }
      
      // Determinar tipo por lados
      String tipoLado;
      if (lado1 == lado2 && lado2 == lado3) {
        tipoLado = 'equilátero';
      } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
        tipoLado = 'isósceles';
      } else {
        tipoLado = 'escaleno';
      }
      
      print('El triángulo es $tipoLado');
      break;
    default:
      print('Opción inválida');
  }
}

// 1.12. Juego de dados
void ejercicio1_12() {
  Random random = Random();
  int intentos = 0;
  bool sacarFicha = false;
  
  while (intentos < 3 && !sacarFicha) {
    int dado1 = 1 + random.nextInt(6);
    int dado2 = 1 + random.nextInt(6);
    
    print('Dados: $dado1 y $dado2');
    
    if (dado1 == dado2) {
      intentos++;
      if (intentos == 3) {
        sacarFicha = true;
        print('¡Saca una ficha!');
      } else {
        print('Lanzar de nuevo');
      }
    } else {
      print('¡Lanza de nuevo!');
      break;
    }
  }
}

// 1.13. Factura con IVA
void ejercicio1_13() {
  print('Ingrese el nombre del artículo:');
  String nombre = stdin.readLineSync()!;
  
  print('Ingrese el valor unitario:');
  double valorUnitario = double.parse(stdin.readLineSync()!);
  
  print('Ingrese la cantidad:');
  int cantidad = int.parse(stdin.readLineSync()!);
  
  print('¿Es de la canasta familiar? (true/false):');
  bool canastaFamiliar = stdin.readLineSync()!.toLowerCase() == 'true';
  
  double subtotal = valorUnitario * cantidad;
  double iva = canastaFamiliar ? 0 : subtotal * 0.19;
  double total = subtotal + iva;
  
  print('\nFactura:');
  print('Artículo: $nombre');
  print('Cantidad: $cantidad');
  print('Valor unitario: \$${valorUnitario.toStringAsFixed(2)}');
  print('Subtotal: \$${subtotal.toStringAsFixed(2)}');
  if (!canastaFamiliar) {
    print('IVA (19%): \$${iva.toStringAsFixed(2)}');
  }
  print('Total a pagar: \$${total.toStringAsFixed(2)}');
}

// 1.14. Tabla de multiplicar específica
void ejercicio1_14() {
  print('Ingrese un número para ver su tabla de multiplicar (1-10):');
  int numero = int.parse(stdin.readLineSync()!);
  
  if (numero < 1 || numero > 10) {
    print('Número fuera de rango');
    return;
  }
  
  print('Tabla de multiplicar del $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}

// 1.15. Todas las tablas de multiplicar
void ejercicio1_15() {
  print('Tablas de multiplicar del 1 al 10:');
  for (int i = 1; i <= 10; i++) {
    print('\nTabla del $i:');
    for (int j = 1; j <= 10; j++) {
      print('$i x $j = ${i * j}');
    }
  }
}

// 1.16. Serie de Fibonacci
void ejercicio1_16() {
  print('Ingrese la cantidad de números de la serie Fibonacci que desea ver:');
  int cantidad = int.parse(stdin.readLineSync()!);
  
  if (cantidad <= 0) {
    print('La cantidad debe ser mayor a cero');
    return;
  }
  
  List<int> fibonacci = [];
  if (cantidad >= 1) fibonacci.add(0);
  if (cantidad >= 2) fibonacci.add(1);
  
  for (int i = 2; i < cantidad; i++) {
    fibonacci.add(fibonacci[i-1] + fibonacci[i-2]);
  }
  
  print('Serie Fibonacci:');
  print(fibonacci.join(', '));
}

// 1.17. Factorial
void ejercicio1_17() {
  print('Ingrese un número para calcular su factorial (0-12):');
  int numero = int.parse(stdin.readLineSync()!);
  
  if (numero < 0) {
    print('No existe factorial de números negativos');
    return;
  }
  
  if (numero > 12) {
    print('El factorial es infinito (demasiado grande)');
    return;
  }
  
  int factorial = 1;
  for (int i = 2; i <= numero; i++) {
    factorial *= i;
  }
  
  print('$numero! = $factorial');
}

// 1.18. Ordenar tres números
void ejercicio1_18() {
  print('Ingrese tres números:');
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  
  print('¿Cómo desea ordenarlos? (ascendente/descendente):');
  String orden = stdin.readLineSync()!.toLowerCase();
  
  List<double> numeros = [a, b, c];
  
  if (orden == 'ascendente') {
    numeros.sort();
  } else if (orden == 'descendente') {
    numeros.sort((x, y) => y.compareTo(x));
  } else {
    print('Opción de orden no válida');
    return;
  }
  
  print('Números ordenados: ${numeros.join(', ')}');
}

// 1.19. Baloto
void ejercicio1_19() {
  print('Presione enter para generar números de baloto...');
  stdin.readLineSync();
  
  Random random = Random();
  Set<int> numeros = {};
  
  while (numeros.length < 6) {
    numeros.add(1 + random.nextInt(45));
  }
  
  List<int> numerosOrdenados = numeros.toList()..sort();
  
  print('Números de baloto:');
  print(numerosOrdenados.join(' - '));
}

// 1.20. Contar dígitos
void ejercicio1_20() {
  print('Ingrese un número para contar sus dígitos:');
  String entrada = stdin.readLineSync()!;
  
  // Eliminar posibles signos negativos o puntos decimales
  String numero = entrada.replaceAll(RegExp(r'[^0-9]'), '');
  
  print('El número tiene ${numero.length} dígitos');
}

// 1.21. Serie par o impar
void ejercicio1_21() {
  print('Ingrese el primer número:');
  int a = int.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  int b = int.parse(stdin.readLineSync()!);
  
  int inicio = a < b ? a : b;
  int fin = a < b ? b : a;
  
  print('¿Qué serie desea? (par/impar):');
  String tipoSerie = stdin.readLineSync()!.toLowerCase();
  
  print('Serie $tipoSerie entre $inicio y $fin:');
  
  for (int i = inicio; i <= fin; i++) {
    if (tipoSerie == 'par' && i % 2 == 0) {
      print(i);
    } else if (tipoSerie == 'impar' && i % 2 != 0) {
      print(i);
    }
  }
}

// 1.22. Vector de 10 posiciones
void ejercicio1_22() {
  List<int> vector = List.generate(10, (index) => index + 1);
  
  print('Contenido del vector:');
  for (int i = 0; i < vector.length; i++) {
    print('Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}');
  }
}

// 1.23. Matriz de datos
void ejercicio1_23() {
  List<String> encabezados = ['Nombre', 'Apellido', 'Edad', 'Estado', 'Teléfono'];
  
  List<List<String>> matriz = [
    ['Juan', 'Pérez', '25', 'Soltero', '1234567890'],
    ['María', 'Gómez', '30', 'Casada', '0987654321'],
    ['Carlos', 'López', '22', 'Soltero', '5555555555'],
    ['Ana', 'Martínez', '28', 'Soltera', '4444444444']
  ];
  
  // Mostrar encabezados
  print(encabezados.join('\t|\t'));
  print('-' * 60);
  
  // Mostrar datos
  for (var fila in matriz) {
    print(fila.join('\t|\t'));
  }
}

// 1.25. Ordenar vector
void ejercicio1_25() {
  print('Ingrese la cantidad de elementos del vector:');
  int cantidad = int.parse(stdin.readLineSync()!);
  
  List<int> vector = [];
  for (int i = 0; i < cantidad; i++) {
    print('Ingrese el elemento ${i + 1}:');
    vector.add(int.parse(stdin.readLineSync()!));
  }
  
  print('¿Cómo desea ordenar el vector? (ascendente/descendente):');
  String orden = stdin.readLineSync()!.toLowerCase();
  
  if (orden == 'ascendente') {
    vector.sort();
  } else if (orden == 'descendente') {
    vector.sort((a, b) => b.compareTo(a));
  } else {
    print('Opción de orden no válida');
    return;
  }
  
  print('Vector ordenado:');
  print(vector.join(', '));
}

// 1.28. Menú de funciones de suma
void ejercicio1_28() {
  print('Menú de funciones para sumar:');
  print('1. Sin parámetros y sin retorno de valor');
  print('2. Con parámetros y sin retorno de valor');
  print('3. Sin parámetros y con retorno de valor');
  print('4. Con parámetros y con retornos de valor');
  
  print('Seleccione una opción (1-4):');
  int opcion = int.parse(stdin.readLineSync()!);
  
  switch (opcion) {
    case 1:
      sumaSinParametrosNiRetorno();
      break;
    case 2:
      print('Ingrese dos números para sumar:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      sumaConParametrosSinRetorno(a, b);
      break;
    case 3:
      double resultado = sumaSinParametrosConRetorno();
      print('El resultado es: $resultado');
      break;
    case 4:
      print('Ingrese dos números para sumar:');
      double a = double.parse(stdin.readLineSync()!);
      double b = double.parse(stdin.readLineSync()!);
      double resultado = sumaConParametrosYRetorno(a, b);
      print('El resultado es: $resultado');
      break;
    default:
      print('Opción inválida');
  }
}

void sumaSinParametrosNiRetorno() {
  double a = 5;
  double b = 7;
  print('La suma de $a y $b es ${a + b}');
}

void sumaConParametrosSinRetorno(double a, double b) {
  print('La suma de $a y $b es ${a + b}');
}

double sumaSinParametrosConRetorno() {
  double a = 10;
  double b = 20;
  return a + b;
}

double sumaConParametrosYRetorno(double a, double b) {
  return a + b;
}