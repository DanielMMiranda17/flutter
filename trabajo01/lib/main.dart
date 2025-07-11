// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'dart:io';

// 🔹 Importaciones de ejercicios
import 'ejercicios/01_constantes_datos.dart';
import 'ejercicios/02_variables_entrada.dart';
import 'ejercicios/03_suma_secuencial.dart';
import 'ejercicios/04_resta_secuencial.dart';
import 'ejercicios/05_multiplicacion_secuencial.dart';
import 'ejercicios/06_division_condicional.dart';
import 'ejercicios/07_combinacion_colores.dart';
import 'ejercicios/08_menu_operaciones.dart';
import 'ejercicios/09_menu_figuras.dart';
import 'ejercicios/10_cilindro.dart';
import 'ejercicios/11_tipo_triangulo.dart';
import 'ejercicios/12_dados_parques.dart';
import 'ejercicios/13_canasta_iva.dart';
import 'ejercicios/14_tabla_multiplicar.dart';
import 'ejercicios/15_numeros_pares.dart';
import 'ejercicios/16_multiplos_de_3.dart';
import 'ejercicios/17_pares_e_impares.dart';
import 'ejercicios/18_multiplo_de_2_y_3.dart';
import 'ejercicios/19_multiplo_de_2_3_5.dart';
import 'ejercicios/20_tabla_multiplicar_bucle.dart';
import 'ejercicios/21_tabla_invertida.dart';
import 'ejercicios/22_vector_basico.dart';
import 'ejercicios/23_vector_matriz.dart';
import 'ejercicios/24_arreglos_ejercicios.dart';
import 'ejercicios/25_vector_ordenado.dart';
import 'ejercicios/26_guayabita.dart';
import 'ejercicios/27_factura_matrices.dart';
import 'ejercicios/28_funciones_menu.dart';

void main() {
  menuEjercicios(); // este es como un array que va a mostrar un tipo menu que se parece a un for o un while
  runApp(const MyApp());
}

void menuEjercicios() {
  int opcion = -1;

  do {
    print('\n MENÚ DE EJERCICIOS ');
    print('0. Salir');
    print('1. Constantes y datos');
    print('2. Variables y entrada');
    print('3. Suma secuencial');
    print('4. Resta secuencial');
    print('5. Multiplicación secuencial');
    print('6. División condicional');
    print('7. Combinación de colores');
    print('8. Menú de operaciones');
    print('9. Menú de figuras');
    print('10. Cilindro con tapa');
    print('11. Tipo de triángulo');
    print('12. Dados (Parqués)');
    print('13. Canasta con IVA');
    print('14. Tabla de multiplicar');
    print('15. Números pares');
    print('16. Múltiplos de 3');
    print('17. Pares e impares');
    print('18. Múltiplo de 2 y 3');
    print('19. Múltiplo de 2, 3 y 5');
    print('20. Todas las tablas');
    print('21. Tabla invertida');
    print('22. Vector básico');
    print('23. Vector y matriz');
    print('24. Arreglos ejercicios');
    print('25. Vector ordenado');
    print('26. Juego guayabita');
    print('27. Factura con matrices');
    print('28. Funciones con menú');
    stdout.write('\n Digita una opción: ');
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    print('');

    switch (opcion) {
      case 0:
        print(' Cerrando el menú...');
        break;
      case 1:
        mostrarInfoPersonal();
        break;
      case 2:
        capturarDatosUsuario();
        break;
      case 3:
        SumaSecuencial();
        break;
      case 4:
        restaSecuencial();
        break;
      case 5:
        multiplicacionSecuencial();
        break;
      case 6:
        divisionCondicional();
        break;
      case 7:
        combinacionColores();
        break;
      case 8:
        menuOperaciones();
        break;
      case 9:
        menuFiguras();
        break;
      case 10:
        cilindroConTapa();
        break;
      case 11:
        tipoTriangulo();
        break;
      case 12:
        dadosParques();
        break;
      case 13:
        canastaIVA();
        break;
      case 14:
        tablaMultiplicar();
        break;
      case 15:
        numerosPares();
        break;
      case 16:
        multiplosDe3();
        break;
      case 17:
        paresEImpares();
        break;
      case 18:
        multiploDe2y3();
        break;
      case 19:
        multiploDe2y3y5();
        break;
      case 20:
        todasTablasMultiplicar();
        break;
      case 21:
        tablaInvertida();
        break;
      case 22:
        vectorBasico();
        break;
      case 23:
        vectorMatriz();
        break;
      case 24:
        arregloEjercicios();
        break;
      case 25:
        vectorOrdenado();
        break;
      case 26:
        guayabita();
        break;
      case 27:
        facturaConMatrices();
        break;
      case 28:
        funcionesSuma();
        break;
      default:
        print(' Opción no válida. Intenta de nuevo.');
    }

    if (opcion != 0) {
      stdout.write('\nPresiona ENTER para continuar...');
      stdin.readLineSync();
    }
  } while (opcion != 0);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Este proyecto corre por consola es mejor abrirlo por visual dandole correr, no supe como hacer que se mostrara en el apartado principal pero los ejercicios sirven hechos por Daniel Miranda.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
