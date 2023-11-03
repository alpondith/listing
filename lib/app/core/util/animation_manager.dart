import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationManager {
  // Animation on Text and Icons
  static List<Effect<dynamic>>? typography = [
    FadeEffect(
      duration: 400.milliseconds,
      delay: 100.milliseconds,
    ),
    SlideEffect(
      duration: 400.milliseconds,
      delay: 100.milliseconds,
      begin: const Offset(0, 0.1),
    ),
  ];

  // Animation on Card and Components
  static List<Effect<dynamic>>? component = [
    FadeEffect(
      duration: 400.milliseconds,
    ),
    SlideEffect(
      duration: 400.milliseconds,
      begin: const Offset(0, 0.1),
    ),
  ];

  // Animation on Card and Components
  static List<Effect<dynamic>>? tile = [
    // FlipEffect(),
  ];
}
