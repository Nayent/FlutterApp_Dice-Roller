import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
      : firstColor = Colors.deepPurple,
        secondColor = Colors.indigo;

  final Color firstColor;
  final Color secondColor;

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [firstColor, secondColor],
              begin: startAlignment,
              end: endAlignment)),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class NomuraText extends StatelessWidget {
  const NomuraText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.white, fontSize: 28));
  }
}
