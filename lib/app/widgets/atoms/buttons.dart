import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:getwidget/getwidget.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/color_manager.dart';
import '../../core/util/dimension_manager.dart';
import '../../core/util/font_manager.dart';
import '../../core/util/space_manager.dart';
import 'icons.dart';
import 'texts.dart';

//***************************************************************/
// *******************      Primary Button      *****************/
//***************************************************************/
class PrimaryButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color color;
  final double elevation;
  final VoidCallback? onTap;

  const PrimaryButton({
    super.key,
    this.label = '',
    this.onTap,
    this.color = ColorManager.ACCENT,
    this.labelColor = ColorManager.ON_ACCENT,
    this.elevation = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.component,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SpaceManager.TINY),
        child: GFButton(
          onPressed: onTap,
          elevation: elevation,
          size: DimensionManager.LARGE,
          fullWidthButton: true,
          color: color,
          disabledColor: color,
          child: MediumLabel(
            label,
            color: labelColor,
          ),
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************      Secondary Button    *****************/
//***************************************************************/
class SecondaryButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color color;
  final VoidCallback? onTap;

  const SecondaryButton({
    super.key,
    this.label = '',
    this.labelColor = FontManager.COLOR,
    this.color = ColorManager.TONE,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      label: label,
      labelColor: labelColor,
      color: color,
      elevation: 0,
      onTap: onTap,
    );
  }
}

//***************************************************************/
// *******************       Tertiary Button    *****************/
//***************************************************************/
class TertiaryButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color color;
  final VoidCallback? onTap;

  const TertiaryButton({
    super.key,
    this.label = '',
    this.labelColor = FontManager.COLOR,
    this.color = ColorManager.SURFACE,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      label: label,
      labelColor: labelColor,
      color: color,
      elevation: 0,
      onTap: onTap,
    );
  }
}

//***************************************************************/
// *******************     Action Button        *****************/
//***************************************************************/
class ActionButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color color;
  final Color labelColor;

  const ActionButton({
    super.key,
    this.label = '',
    this.icon,
    this.onTap,
    this.color = ColorManager.TONE,
    this.labelColor = ColorManager.ON_TONE,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.component,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: SpaceManager.TINY),
        child: GFButton(
          onPressed: onTap,
          position: GFPosition.start,
          shape: GFButtonShape.pills,
          color: color,
          disabledColor: color,
          icon: TertiaryIcon(icon),
          child: SmallLabel(
            label,
            color: labelColor,
          ),
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************     Dual Icon Button     *****************/
//***************************************************************/
class DualIconButton extends StatelessWidget {
  final String label;
  final IconData startIcon;
  final IconData endIcon;
  final VoidCallback? onTap;
  final Color color;
  final Color labelColor;

  const DualIconButton({
    super.key,
    this.label = '',
    required this.startIcon,
    required this.endIcon,
    this.onTap,
    this.color = ColorManager.TONE,
    this.labelColor = ColorManager.ON_TONE,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: SpaceManager.TINY),
      child: GFButton(
        onPressed: onTap,
        shape: GFButtonShape.pills,
        color: color,
        disabledColor: color,
        type: GFButtonType.solid,
        size: DimensionManager.LARGE,
        fullWidthButton: false,
        child: SizedBox(
          height: 64,
          // color: Colors.red.shade200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryIcon(startIcon),
              const SizedBox(width: SpaceManager.SMALL),
              SmallLabel(
                label,
                color: labelColor,
              ),
              const SizedBox(width: SpaceManager.SMALL),
              PrimaryIcon(endIcon),
            ],
          ),
        ),
      ),
    );
  }
}
