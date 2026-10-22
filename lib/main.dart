import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main () {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text('My First App')),
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 32, 0, 119),
            Color.fromARGB(255, 13, 1, 65),
          ],
        ),
    ),
  ),
  );
}