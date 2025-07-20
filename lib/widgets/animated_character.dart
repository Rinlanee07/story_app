import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedCharacter extends StatelessWidget {
  const AnimatedCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/animations/loading.json', height: 200);
  }
}
