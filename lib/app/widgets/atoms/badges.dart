// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/color_manager.dart';
import '../../core/util/space_manager.dart';

//***************************************************************/
// *******************     Dual Icon Button     *****************/
//***************************************************************/
class _Badge extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  const _Badge({
    this.label = '',
    super.key,
    this.backgroundColor = ColorManager.ACCENT,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.component,
      child: Badge(
        padding: const EdgeInsets.symmetric(horizontal: SpaceManager.SMALL),
        label: Text(label),
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class PrimaryBadge extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  const PrimaryBadge({
    super.key,
    this.label = '',
    this.backgroundColor = ColorManager.ACCENT,
  });

  @override
  Widget build(BuildContext context) {
    return _Badge(
      label: label,
      backgroundColor: backgroundColor,
    );
  }
}
