import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // Biến này nằm trong State. Đổi nó bên trong setState thì Flutter vẽ lại widget.
  var currentDice = 1;
  var rollCount = 0;
  void rollDice() {
    setState(() {
      rollCount++;
      // nextInt(3) ra 0, 1 hoặc 2. Cộng 1 để khớp file icon-xe-1/2/3.png.
      currentDice = Random().nextInt(3) + 1;
    });
  }

  void resetRollCount() {
    setState(() {
      rollCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/icon-xe-$currentDice.png',
          width: 100,
          height: 100,
        ),
        Column(
          children: [
            TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 5),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28.2),
          ),
          child: const Text('Roll Dice'),
        ),
        Text(
          'Rolls: $rollCount',
          style: const TextStyle(
            fontSize: 28.2,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: resetRollCount,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 5),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28.2),
          ),
          child: const Text('Reset Rolls'),
        ),
          ]
        )
      ],
    );
  }
}
