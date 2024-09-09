import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideanimation,
  });

  final Animation<Offset> slideanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideanimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideanimation,
            child: const Text(
              'Read Free Box',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
