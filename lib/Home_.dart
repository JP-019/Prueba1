import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba1/compontes/button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _backgroundColor = Color.fromARGB(153, 255, 255, 255); // Color inicial

  void cambiar1() {
    setState(() {
      _backgroundColor = const Color.fromARGB(255, 255, 110, 99);
    });
  }

  void cambiar2() {
    setState(() {
      _backgroundColor = Color.fromARGB(255, 136, 195, 243);
    });
  }

  void cambiarrandom() {
    setState(() {
      _backgroundColor = getRandomColor(); // Cambia el color a uno aleatorio
    });
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), // Componente rojo
      random.nextInt(256), // Componente verde
      random.nextInt(256), // Componente azul
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Aplicacion para Cambiar colores de fondos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),

              // Botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botón 1 (Rojo)
                  MyButton(
                    text: 'Rojo',
                    onPressed: () {
                      cambiar1();
                    },
                  ),
                  const SizedBox(width: 10),

                  // Botón 2 (Aleatorio)
                  MyButton(
                    text: 'Aleatorio',
                    onPressed: () {
                      cambiarrandom();
                    },
                  ),

                  const SizedBox(width: 10),

                  // Botón 3 (Azul)
                  MyButton(
                    text: 'Azul',
                    onPressed: () {
                      cambiar2();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
