import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/color_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../../core/util/font_manager.dart';
import '../../core/util/space_manager.dart';
import '../atoms/icons.dart';
import '../atoms/texts.dart';

//***************************************************************/
// *******************      Primary Overview    *****************/
//***************************************************************/
class PrimaryOverview extends StatelessWidget {
  final String label;
  final String category;
  final String value;
  final Color color;
  final double height;
  final double width;
  final VoidCallback? onTap;
  const PrimaryOverview({
    Key? key,
    required this.label,
    required this.category,
    required this.value,
    this.color = ColorManager.TONE,
    this.height = 80,
    this.width = 180,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(SpaceManager.MEDIUM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
          border: Border.all(width: 2, color: color),
          color: color,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TinyParagraph(
                  category,
                  color: FontManager.LITE_COLOR,
                ),
                SmallLabel(label),
              ],
            ),
            const Spacer(),
            LargeLabel(value),
          ],
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************    Secondary Overview    *****************/
//***************************************************************/
class SecondaryOverview extends StatelessWidget {
  final String label;
  final String category;
  final String value;
  final Color color;
  final double height;
  final double width;
  final VoidCallback? onTap;
  const SecondaryOverview({
    Key? key,
    required this.label,
    required this.category,
    required this.value,
    this.color = ColorManager.TONE,
    this.height = 104,
    this.width = 180,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.component,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(SpaceManager.MEDIUM),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
            border: Border.all(width: 2, color: color),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start, // or (start / center)
            children: [
              LargeLabel(value),
              const Spacer(),
              TinyParagraph(
                category,
                color: FontManager.LITE_COLOR,
              ),
              SmallLabel(label),
            ],
          ),
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************    Tertiary  Overview    *****************/
//***************************************************************/
class TertiaryOverview extends StatelessWidget {
  final String label;
  final String category;
  final String value;
  final Color color;
  final double height;
  final double width;
  final VoidCallback? onTap;
  const TertiaryOverview({
    Key? key,
    required this.label,
    required this.category,
    required this.value,
    this.color = ColorManager.TONE,
    this.height = 104,
    this.width = 180,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(SpaceManager.MEDIUM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
          border: Border.all(width: 2, color: color),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // or (start / center)
          children: [
            LargeLabel(value),
            const Spacer(),
            TinyParagraph(
              category,
              color: FontManager.LITE_COLOR,
            ),
            SmallLabel(label),
          ],
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************  Primary Icon Overview   *****************/
//***************************************************************/
class PrimaryIconOverview extends StatelessWidget {
  final String label;
  final String category;
  final String value;
  final Color color;
  final IconData icon;
  final double height;
  final double width;
  final VoidCallback? onTap;
  const PrimaryIconOverview({
    Key? key,
    required this.label,
    required this.category,
    required this.value,
    this.color = ColorManager.TONE,
    required this.icon,
    this.height = 110,
    this.width = 180,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(SpaceManager.MEDIUM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
          border: Border.all(width: 2, color: color),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                PrimaryIcon(icon),
                const Spacer(),
                LargeLabel(value),
              ],
            ),
            const Spacer(),
            TinyParagraph(
              category,
              color: FontManager.LITE_COLOR,
            ),
            SmallLabel(label),
          ],
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************  Secondary Icon Overview *****************/
//***************************************************************/
class SecondaryIconOverview extends StatelessWidget {
  final String label;
  final String category;
  final String value;
  final Color color;
  final IconData icon;
  final double height;
  final double width;
  final VoidCallback? onTap;
  const SecondaryIconOverview({
    Key? key,
    required this.label,
    required this.category,
    required this.value,
    this.color = ColorManager.TONE,
    required this.icon,
    this.height = 80,
    this.width = 180,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(SpaceManager.MEDIUM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
          border: Border.all(width: 2, color: color),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TertiaryIcon(icon),
            // const SizedBox(width: SpaceManager.MEDIUM),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TinyParagraph(
                  category,
                  color: FontManager.LITE_COLOR,
                ),
                SmallLabel(label),
              ],
            ),
            const Spacer(),
            LargeLabel(value),
          ],
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************  Tertiary Icon Overview  *****************/
//***************************************************************/
class TertiaryIconOverview extends StatelessWidget {
  final String label;
  final String category;
  final String value;
  final Color color;
  final IconData icon;
  final double height;
  final double width;
  final VoidCallback? onTap;
  const TertiaryIconOverview({
    Key? key,
    required this.label,
    required this.category,
    required this.value,
    this.color = ColorManager.TONE,
    required this.icon,
    this.height = 130,
    this.width = 180,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(SpaceManager.MEDIUM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
          border: Border.all(width: 2, color: color),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TertiaryIcon(icon),
            const Spacer(),
            LargeLabel(value),
            TinyParagraph(
              category,
              color: FontManager.LITE_COLOR,
            ),
            SmallLabel(label),
          ],
        ),
      ),
    );
  }
}
