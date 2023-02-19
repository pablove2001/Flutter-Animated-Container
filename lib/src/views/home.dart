import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.amber[800]!;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void _cambiarContainer() {
    final random = Random();

    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();
    _color = Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
    _borderRadius = BorderRadius.circular(random.nextInt(20).toDouble());

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.fastLinearToSlowEaseIn,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: Duration(milliseconds: 1500),
            ),
          ),
        ),
        TextButton(
          onPressed: _cambiarContainer,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 113, 113, 113),
          ),
          child: const Text(
            'Cambiar Container',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
