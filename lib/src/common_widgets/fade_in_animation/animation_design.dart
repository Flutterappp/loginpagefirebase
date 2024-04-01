import 'package:flutter/material.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';

class TFadlnAnimation extends StatelessWidget {
  const TFadlnAnimation({
    super.key,
    required this.animate,
  });

  final bool animate;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1600),
      top: animate ? 0 : -30,
      left: animate ? 0 : -30,
      child: Container(
        width: 250,
        height: 200,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: tPrimaryColor,
        ),
      ),
    );
  }
}