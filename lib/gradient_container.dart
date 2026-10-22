import 'package:flutter/material.dart';
import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
String imgAssetPath = 'assets/images/icon-xe-1.png';
void rollDice() {
  final randomNumber = (1 + (3 * (new DateTime.now().millisecondsSinceEpoch % 1000) / 1000)).toInt();
  print('Random number: $randomNumber');
  imgAssetPath = 'assets/images/icon-xe-$randomNumber.png';
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});


      GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 32, 0, 119),
          Color.fromARGB(255, 13, 1, 65),
        ];
  final List<Color> colors;
  final content = 'Hello World 2';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
          Image.asset(imgAssetPath, width: 100, height: 100,),
          TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 5),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28.2),
          ),
          child: const StyledText('Roll Dice 2'),
        ),
        Text('Dòng 1', style: TextStyle(fontSize: 28.2, color: Colors.white),),
        ], 
        ), 
      ),
    );
  }
}