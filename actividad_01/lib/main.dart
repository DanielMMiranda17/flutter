import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicios Dart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MenuEjercicios(),
    );
  }
}

class MenuEjercicios extends StatefulWidget {
  const MenuEjercicios({super.key});

  @override
  State<MenuEjercicios> createState() => _MenuEjerciciosState();
}

class _MenuEjerciciosState extends State<MenuEjercicios> {
  final List<String> ejercicios = [
    '1.1. Mostrar datos constantes',
    '1.2. Mostrar datos variables',
    '1.3. Sumar dos números',
    '1.4. Restar dos números',
    '1.5. Multiplicar dos números',
    '1.6. Dividir dos números',
    '1.7. Combinación de colores',
    '1.8. Operaciones matemáticas',
    '1.9. Áreas y perímetros',
    '1.10. Cilindro',
    '1.11. Tipo de triángulo',
    '1.12. Juego de dados',
    '1.13. Factura con IVA',
    '1.14. Tabla de multiplicar',
    '1.15. Todas las tablas de multiplicar',
    '1.16. Serie Fibonacci',
    '1.17. Factorial',
    '1.18. Ordenar tres números',
    '1.19. Baloto',
    '1.20. Contar dígitos',
    '1.21. Serie par o impar',
    '1.22. Vector de 10 posiciones',
    '1.23. Matriz de datos',
    '1.25. Ordenar vector',
    '1.28. Menú de funciones de suma',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios Dart'),
      ),
      body: ListView.builder(
        itemCount: ejercicios.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(ejercicios[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EjercicioScreen(
                      ejercicioIndex: index,
                      ejercicioTitle: ejercicios[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class EjercicioScreen extends StatefulWidget {
  final int ejercicioIndex;
  final String ejercicioTitle;

  const EjercicioScreen({
    super.key,
    required this.ejercicioIndex,
    required this.ejercicioTitle,
  });

  @override
  State<EjercicioScreen> createState() => _EjercicioScreenState();
}

class _EjercicioScreenState extends State<EjercicioScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  String _resultado = '';
  List<String> _resultados = [];

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  void _ejecutarEjercicio() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      setState(() {
        _resultados.clear();
        _resultado = '';
        
        switch (widget.ejercicioIndex) {
          case 0:
            _ejercicio1_1();
            break;
          case 1:
            _ejercicio1_2();
            break;
          case 2:
            _ejercicio1_3();
            break;
          case 3:
            _ejercicio1_4();
            break;
          case 4:
            _ejercicio1_5();
            break;
          case 5:
            _ejercicio1_6();
            break;
          case 6:
            _ejercicio1_7();
            break;
          case 7:
            _ejercicio1_8();
            break;
          case 8:
            _ejercicio1_9();
            break;
          case 9:
            _ejercicio1_10();
            break;
          case 10:
            _ejercicio1_11();
            break;
          case 11:
            _ejercicio1_12();
            break;
          case 12:
            _ejercicio1_13();
            break;
          case 13:
            _ejercicio1_14();
            break;
          case 14:
            _ejercicio1_15();
            break;
          case 15:
            _ejercicio1_16();
            break;
          case 16:
            _ejercicio1_17();
            break;
          case 17:
            _ejercicio1_18();
            break;
          case 18:
            _ejercicio1_19();
            break;
          case 19:
            _ejercicio1_20();
            break;
          case 20:
            _ejercicio1_21();
            break;
          case 21:
            _ejercicio1_22();
            break;
          case 22:
            _ejercicio1_23();
            break;
          case 23:
            _ejercicio1_25();
            break;
          case 24:
            _ejercicio1_28();
            break;
          default:
            _resultado = 'Ejercicio no implementado';
        }
      });
    }
  }

  // 1.1. Constantes, tipos de datos y concatenación
  void _ejercicio1_1() {
    const String nombre = 'Juan Pérez';
    const String sexo = 'Masculino';
    const int edad = 30;
    const double salario = 1250.75;
    const bool tieneVehiculo = true;

    _resultados.add('Nombre: $nombre');
    _resultados.add('Sexo: $sexo');
    _resultados.add('Edad: $edad años');
    _resultados.add('Salario: \$${salario.toStringAsFixed(2)}');
    _resultados.add('Tiene vehículo: ${tieneVehiculo ? 'Sí' : 'No'}');
  }

  // 1.2. Variables
  void _ejercicio1_2() {
    _resultados.add('Nombre: ${_controller1.text}');
    _resultados.add('Sexo: ${_controller2.text}');
    _resultados.add('Edad: ${_controller3.text} años');
  }

  // 1.3. Suma
  void _ejercicio1_3() {
    double a = double.parse(_controller1.text);
    double b = double.parse(_controller2.text);
    double resultado = a + b;
    _resultado = 'La suma del número $a con el número $b es: $resultado';
  }

  // 1.4. Resta
  void _ejercicio1_4() {
    double a = double.parse(_controller1.text);
    double b = double.parse(_controller2.text);
    double resultado = a - b;
    _resultado = 'La diferencia del número $a con el número $b es: $resultado';
  }

  // 1.5. Multiplicación
  void _ejercicio1_5() {
    double a = double.parse(_controller1.text);
    double b = double.parse(_controller2.text);
    double resultado = a * b;
    _resultado = 'El producto del número $a con el número $b es: $resultado';
  }

  // 1.6. División
  void _ejercicio1_6() {
    double a = double.parse(_controller1.text);
    double b = double.parse(_controller2.text);
    
    if (b == 0) {
      _resultado = 'Imposible la división por 0';
    } else {
      double resultado = a / b;
      _resultado = 'La división del número $a entre el número $b es: $resultado';
    }
  }

  // 1.7. Combinación de colores
  void _ejercicio1_7() {
    int color1 = int.parse(_controller1.text);
    int color2 = int.parse(_controller2.text);
    
    String combinacion;
    
    if (color1 < 1 || color1 > 3 || color2 < 1 || color2 > 3) {
      combinacion = 'inválida (números fuera de rango)';
    } else if (color1 == color2) {
      combinacion = 'mismo color (${_colorName(color1)})';
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
    
    _resultado = 'Su combinación es $combinacion';
  }

  String _colorName(int color) {
    switch (color) {
      case 1: return 'amarillo';
      case 2: return 'azul';
      case 3: return 'rojo';
      default: return 'desconocido';
    }
  }

  // 1.8. Menú de operaciones matemáticas
  void _ejercicio1_8() {
    int opcion = int.parse(_controller1.text);
    
    switch (opcion) {
      case 1: // Suma
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'Resultado: ${a + b}';
        break;
      case 2: // Resta
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'Resultado: ${a - b}';
        break;
      case 3: // Multiplicación
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'Resultado: ${a * b}';
        break;
      case 4: // División
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        if (b == 0) {
          _resultado = 'Error: división por cero';
        } else {
          _resultado = 'Resultado: ${a / b}';
        }
        break;
      case 5: // Módulo
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'Resultado: ${a % b}';
        break;
      case 6: // Cuadrado
        double a = double.parse(_controller2.text);
        _resultado = 'Resultado: ${a * a}';
        break;
      case 7: // Raíz cuadrada
        double a = double.parse(_controller2.text);
        if (a < 0) {
          _resultado = 'Error: raíz de número negativo';
        } else {
          _resultado = 'Resultado: ${sqrt(a)}';
        }
        break;
      case 8: // Potencia
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'Resultado: ${pow(a, b)}';
        break;
      case 9: // Porcentaje
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'Resultado: ${a * (b / 100)}';
        break;
      case 10: // Número aleatorio
        int min = int.parse(_controller2.text);
        int max = int.parse(_controller3.text);
        Random random = Random();
        _resultado = 'Número aleatorio: ${min + random.nextInt(max - min + 1)}';
        break;
      default:
        _resultado = 'Opción inválida';
    }
  }

  // 1.9. Áreas y perímetros
  void _ejercicio1_9() {
    int figura = int.parse(_controller1.text);
    
    switch (figura) {
      case 1: // Triángulo
        double base = double.parse(_controller2.text);
        double altura = double.parse(_controller3.text);
        if (base <= 0 || altura <= 0) {
          _resultado = 'Error: valores deben ser positivos';
          return;
        }
        double area = (base * altura) / 2;
        _resultado = 'Triángulo - Área: ${area.toStringAsFixed(2)}';
        break;
      case 2: // Rectángulo
        double base = double.parse(_controller2.text);
        double altura = double.parse(_controller3.text);
        if (base <= 0 || altura <= 0) {
          _resultado = 'Error: valores deben ser positivos';
          return;
        }
        double area = base * altura;
        double perimetro = 2 * (base + altura);
        _resultados.add('Rectángulo:');
        _resultados.add('Área: ${area.toStringAsFixed(2)} unidades cuadradas');
        _resultados.add('Perímetro: ${perimetro.toStringAsFixed(2)} unidades');
        break;
      case 3: // Círculo
        double radio = double.parse(_controller2.text);
        if (radio <= 0) {
          _resultado = 'Error: radio debe ser positivo';
          return;
        }
        double area = pi * pow(radio, 2);
        double perimetro = 2 * pi * radio;
        _resultados.add('Círculo:');
        _resultados.add('Área: ${area.toStringAsFixed(2)} unidades cuadradas');
        _resultados.add('Perímetro: ${perimetro.toStringAsFixed(2)} unidades');
        break;
      default:
        _resultado = 'Opción inválida';
    }
  }

  // 1.10. Cilindro
  void _ejercicio1_10() {
    double radio = double.parse(_controller1.text);
    if (radio <= 0) {
      _resultado = 'Error: radio debe ser positivo';
      return;
    }
    
    double altura = double.parse(_controller2.text);
    if (altura <= 0) {
      _resultado = 'Error: altura debe ser positiva';
      return;
    }
    
    double areaSuperficial = 2 * pi * radio * (radio + altura);
    double volumen = pi * pow(radio, 2) * altura;
    
    _resultados.add('Cilindro con radio $radio y altura $altura:');
    _resultados.add('Área superficial: ${areaSuperficial.toStringAsFixed(2)} unidades cuadradas');
    _resultados.add('Volumen: ${volumen.toStringAsFixed(2)} unidades cúbicas');
  }
  
  // 1.14. Tabla de multiplicar
  void _ejercicio1_14() {
    int numero = int.parse(_controller1.text);
    
    if (numero < 1 || numero > 10) {
      _resultado = 'Número fuera de rango';
      return;
    }
    
    _resultados.add('Tabla de multiplicar del $numero:');
    for (int i = 1; i <= 10; i++) {
      _resultados.add('$numero x $i = ${numero * i}');
    }
  }

  // 1.15. Todas las tablas de multiplicar
  void _ejercicio1_15() {
    _resultados.add('Tablas de multiplicar del 1 al 10:');
    for (int i = 1; i <= 10; i++) {
      _resultados.add('\nTabla del $i:');
      for (int j = 1; j <= 10; j++) {
        _resultados.add('$i x $j = ${i * j}');
      }
    }
  }

  // 1.16. Serie de Fibonacci
  void _ejercicio1_16() {
    int cantidad = int.parse(_controller1.text);
    
    if (cantidad <= 0) {
      _resultado = 'La cantidad debe ser mayor a cero';
      return;
    }
    
    List<int> fibonacci = [];
    if (cantidad >= 1) fibonacci.add(0);
    if (cantidad >= 2) fibonacci.add(1);
    
    for (int i = 2; i < cantidad; i++) {
      fibonacci.add(fibonacci[i-1] + fibonacci[i-2]);
    }
    
    _resultado = 'Serie Fibonacci: ${fibonacci.join(', ')}';
  }

  // 1.17. Factorial
  void _ejercicio1_17() {
    int numero = int.parse(_controller1.text);
    
    if (numero < 0) {
      _resultado = 'No existe factorial de números negativos';
      return;
    }
    
    if (numero > 12) {
      _resultado = 'El factorial es infinito (demasiado grande)';
      return;
    }
    
    int factorial = 1;
    for (int i = 2; i <= numero; i++) {
      factorial *= i;
    }
    
    _resultado = '$numero! = $factorial';
  }

  // 1.19. Baloto
  void _ejercicio1_19() {
    Random random = Random();
    Set<int> numeros = {};
    
    while (numeros.length < 6) {
      numeros.add(1 + random.nextInt(45));
    }
    
    List<int> numerosOrdenados = numeros.toList()..sort();
    
    _resultado = 'Números de baloto: ${numerosOrdenados.join(' - ')}';
  }

  // 1.22. Vector de 10 posiciones
  void _ejercicio1_22() {
    List<int> vector = List.generate(10, (index) => index + 1);
    
    _resultados.add('Contenido del vector:');
    for (int i = 0; i < vector.length; i++) {
      _resultados.add('Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}');
    }
  }

  // 1.23. Matriz de datos
  void _ejercicio1_23() {
    List<String> encabezados = ['Nombre', 'Apellido', 'Edad', 'Estado', 'Teléfono'];
    
    List<List<String>> matriz = [
      ['Juan', 'Pérez', '25', 'Soltero', '1234567890'],
      ['María', 'Gómez', '30', 'Casada', '0987654321'],
      ['Carlos', 'López', '22', 'Soltero', '5555555555'],
      ['Ana', 'Martínez', '28', 'Soltera', '4444444444']
    ];
    
    _resultados.add(encabezados.join('\t|\t'));
    _resultados.add('-' * 60);
    
    for (var fila in matriz) {
      _resultados.add(fila.join('\t|\t'));
    }
  }

  // 1.28. Menú de funciones de suma
  void _ejercicio1_28() {
    int opcion = int.parse(_controller1.text);
    
    switch (opcion) {
      case 1:
        _sumaSinParametrosNiRetorno();
        break;
      case 2:
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _sumaConParametrosSinRetorno(a, b);
        break;
      case 3:
        _resultado = 'El resultado es: ${_sumaSinParametrosConRetorno()}';
        break;
      case 4:
        double a = double.parse(_controller2.text);
        double b = double.parse(_controller3.text);
        _resultado = 'El resultado es: ${_sumaConParametrosYRetorno(a, b)}';
        break;
      default:
        _resultado = 'Opción inválida';
    }
  }

  void _sumaSinParametrosNiRetorno() {
    double a = 5;
    double b = 7;
    _resultado = 'La suma de $a y $b es ${a + b}';
  }

  void _sumaConParametrosSinRetorno(double a, double b) {
    _resultado = 'La suma de $a y $b es ${a + b}';
  }

  double _sumaSinParametrosConRetorno() {
    double a = 10;
    double b = 20;
    return a + b;
  }

  double _sumaConParametrosYRetorno(double a, double b) {
    return a + b;
  }

  Widget _buildInputFields() {
    switch (widget.ejercicioIndex) {
      case 0: // 1.1. No necesita inputs
        return Container();
      case 1: // 1.2. Nombre, sexo, edad
        return Column(
          children: [
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Nombre'),
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Sexo'),
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller3,
              decoration: const InputDecoration(labelText: 'Edad'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
          ],
        );
      case 2: // 1.3. Suma - 2 números
      case 3: // 1.4. Resta - 2 números
      case 4: // 1.5. Multiplicación - 2 números
      case 5: // 1.6. División - 2 números
        return Column(
          children: [
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Número A'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Número B'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
          ],
        );
      case 6: // 1.7. Colores - 2 números (1-3)
        return Column(
          children: [
            const Text('Menú de colores:'),
            const Text('1. Amarillo'),
            const Text('2. Azul'),
            const Text('3. Rojo'),
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Primer número (1-3)'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Segundo número (1-3)'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
          ],
        );
      case 7: // 1.8. Operaciones matemáticas
        return Column(
          children: [
            const Text('Menú de operaciones:'),
            const Text('1. Suma, 2. Resta, 3. Multiplicación, 4. División'),
            const Text('5. Módulo, 6. Cuadrado, 7. Raíz, 8. Potencia'),
            const Text('9. Porcentaje, 10. Aleatorio'),
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Opción (1-10)'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Primer número'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _controller3,
              decoration: const InputDecoration(labelText: 'Segundo número'),
              keyboardType: TextInputType.number,
            ),
          ],
        );
      case 8: // 1.9. Figuras geométricas
        return Column(
          children: [
            const Text('Menú de figuras:'),
            const Text('1. Triángulo, 2. Rectángulo, 3. Círculo'),
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Opción (1-3)'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Base/Radio'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller3,
              decoration: const InputDecoration(labelText: 'Altura'),
              keyboardType: TextInputType.number,
            ),
          ],
        );
      case 14: // 1.15. No necesita inputs
      case 19: // 1.20. No necesita inputs (usa texto directo)
      case 21: // 1.22. No necesita inputs
      case 22: // 1.23. No necesita inputs
        return Container();
      default:
        return Column(
          children: [
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Valor 1'),
              keyboardType: TextInputType.number,
              validator: (value) => value?.isEmpty ?? true ? 'Campo requerido' : null,
            ),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Valor 2'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _controller3,
              decoration: const InputDecoration(labelText: 'Valor 3'),
              keyboardType: TextInputType.number,
            ),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.ejercicioTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildInputFields(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ejecutarEjercicio,
                child: const Text('Ejecutar'),
              ),
              const SizedBox(height: 20),
              if (_resultado.isNotEmpty)
                Text(
                  _resultado,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              if (_resultados.isNotEmpty)
                ..._resultados.map((result) => Text(result)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}