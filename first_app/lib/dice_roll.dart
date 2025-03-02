import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  int diceNumber = 1;

  void onRollDicePressed() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$diceNumber.png',
          width: 200,
        ),
        OutlinedButton(
          onPressed: onRollDicePressed,
          child: StyledText('Get new Dice'),
        )
      ],
    );
  }
}
