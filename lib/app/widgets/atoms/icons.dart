// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/color_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../../core/util/dimension_manager.dart';
import '../../core/util/shadow_manager.dart';
import '../../core/util/space_manager.dart';

//***************************************************************/
// *******************        Soild Icon        *****************/
//***************************************************************/
class _Icon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double radius;
  final EdgeInsets padding;
  final VoidCallback? onTap;

  const _Icon(
    this.icon, {
    super.key,
    this.color = ColorManager.ACCENT,
    this.size = DimensionManager.SMALL,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.borderWidth = 3,
    this.radius = CornerRadiusManager.TINY,
    this.padding = const EdgeInsets.all(SpaceManager.TINY),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.typography,
      child: Material(
        type: MaterialType.transparency,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(radius),
            onTap: onTap,
            child: Padding(
              padding: padding,
              child: Icon(
                icon,
                size: size,
                color: color,
                shadows: ShadowManager.shallow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************       Primary Icon       *****************/
//***************************************************************/
class PrimaryIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const PrimaryIcon(
    this.icon, {
    super.key,
    this.color = ColorManager.ON_ACCENT,
    this.size = DimensionManager.TINY,
    this.backgroundColor = ColorManager.ACCENT,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return _Icon(
      icon,
      color: color,
      size: size,
      padding: const EdgeInsets.all(SpaceManager.SMALL),
      backgroundColor: backgroundColor,
      borderColor: ColorManager.DIM_ACCENT,
      radius: CornerRadiusManager.FULL,
      onTap: onTap,
    );
  }
}

//***************************************************************/
// *******************     Secondary Icon       *****************/
//***************************************************************/
class SecondaryIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final VoidCallback? onTap;

  const SecondaryIcon(
    this.icon, {
    super.key,
    this.size = DimensionManager.SMALL,
    this.color = ColorManager.ON_TONE,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return _Icon(
      icon,
      size: size,
      color: color,
      onTap: onTap,
    );
  }
}

//***************************************************************/
// *******************        Tertiary Icon      *****************/
//***************************************************************/

class TertiaryIcon extends StatelessWidget {
  final IconData? icon;
  final double size;
  const TertiaryIcon(
    this.icon, {
    super.key,
    this.size = DimensionManager.SMALL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(CornerRadiusManager.FULL),
        boxShadow: ShadowManager.shallow,
      ),
      child: Center(
        child: Icon(
          icon ?? CupertinoIcons.smallcircle_fill_circle_fill,
          size: DimensionManager.TINY,
          color: ColorManager.ON_ACCENT,
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************   Circular Large Icon    *****************/
//***************************************************************/
class CircularLargeIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final EdgeInsets margin;
  const CircularLargeIcon(
    this.icon, {
    super.key,
    this.color = ColorManager.ACCENT,
    this.margin = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 48,
        color: color,
      ),
    );
  }
}
