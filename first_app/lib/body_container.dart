import 'package:first_app/dice_roll.dart';
import 'package:flutter/material.dart';

Alignment startAlignment = Alignment.bottomCenter;
var endAlignment = Alignment.bottomRight;

// Not changing, run at runtime
final middleAlignment = Alignment.bottomRight;

// Locked in when the code is compiled
const footerAlignment = Alignment.topCenter;

void changeVariable() {
  startAlignment = Alignment.center;
}

class BodyContainer extends StatelessWidget {
  final List<Color> colors;

  const BodyContainer({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 137, 200),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
        ),
        child: Center(child: DiceRoll()),
      ),
    );
  }
}
