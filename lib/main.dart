import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text('My First App')),
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
    ),
  ),
  );
}