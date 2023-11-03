import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/color_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../../core/util/space_manager.dart';
import '../atoms/texts.dart';

//***************************************************************/
// *******************       Base Tile          *****************/
//***************************************************************/
enum TileType { fill, outline, bottomLine }

enum TileFocus { label, paragraph }

class Tile extends StatelessWidget {
  final String label;
  final String? paragraph;
  final Widget? leading;
  final Widget? trailing;

  final TileType type;
  final TileFocus focus;

  final Color? bgColor;
  final double radius;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double horizontalTitleGap;
  final VisualDensity? visualDensity;

  final double borderWidth;
  final Color borderColor;
  final VoidCallback? onTap;

  const Tile({
    super.key,
    // inputs
    this.label = '',
    this.paragraph,
    this.leading,
    this.trailing,
    // decorations
    this.type = TileType.fill,
    this.focus = TileFocus.label,
    // properties
    this.bgColor = ColorManager.TONE,
    this.padding = const EdgeInsets.symmetric(horizontal: SpaceManager.MEDIUM),
    this.margin = const EdgeInsets.symmetric(vertical: SpaceManager.SMALL),
    this.horizontalTitleGap = 12,
    this.visualDensity,
    // border
    this.borderWidth = 1,
    this.borderColor = ColorManager.LINE,
    this.radius = CornerRadiusManager.SMALL,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Typography setup
    Widget? labelWidget;
    Widget? paragraphWidget;

    if (focus == TileFocus.label) {
      labelWidget = MediumLabel(label);
      paragraphWidget = SmallParagraph(paragraph);
    }

    if (focus == TileFocus.paragraph) {
      labelWidget = SmallParagraph(label);
      paragraphWidget = MediumLabel(paragraph);
    }

    // Decoration setup
    Color? tileColor = bgColor;
    ShapeBorder? border;

    if (type == TileType.fill) {
      tileColor = bgColor;
      border = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );
    }

    if (type == TileType.outline) {
      tileColor = Colors.transparent;
      border = RoundedRectangleBorder(
        side: BorderSide(
          width: borderWidth,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(radius),
      );
    }

    if (type == TileType.bottomLine) {
      tileColor = Colors.transparent;
      border = Border(
        bottom: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
      );
    }

    // Leading and Trailing
    Widget? leadingWidget = leading;
    Widget? trailingWidget = trailing;
    if (leading != null) {
      leadingWidget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading!,
        ],
      );
    }
    if (trailing != null) {
      trailingWidget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          trailing!,
        ],
      );
    }

    return Padding(
      padding: margin,
      child: Animate(
        effects: AnimationManager.tile,
        child: ListTile(
          // Input section
          title: labelWidget,
          subtitle: paragraph != null ? paragraphWidget : null,
          leading: leadingWidget,
          trailing: trailingWidget,
          // properties
          tileColor: tileColor,
          horizontalTitleGap: horizontalTitleGap,
          contentPadding: padding,
          // bordeer
          shape: border,
          visualDensity: visualDensity,
          onTap: onTap,
        ),
      ),
    );
  }
}
