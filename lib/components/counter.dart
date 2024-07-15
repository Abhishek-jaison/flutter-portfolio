import 'package:flutter/material.dart';


class Counter extends StatelessWidget {
  final int targetNumber;
  final Duration animationDuration;

  Counter({required this.targetNumber, required this.animationDuration});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildAnimatedCounter(targetNumber, animationDuration)
    );
  }

  Widget buildAnimatedCounter(int targetNumber, Duration animationDuration) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: targetNumber),
      duration: animationDuration,
      curve: Curves.easeOutCubic, // Custom curve for the animation
      builder: (context, value, child) {
        return Text(
          '$value',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.white),
        );
      },
    );
  }
}

