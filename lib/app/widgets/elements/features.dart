import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/color_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../../core/util/dimension_manager.dart';
import '../../core/util/space_manager.dart';
import '../atoms/icons.dart';
import '../atoms/texts.dart';

enum FeatureType { solid, outlined }

enum FeatureState { inline, vertical }

//***************************************************************/
// *******************      Base Info Tile      *****************/
//***************************************************************/
class BaseFeature extends StatelessWidget {
  final FeatureType type;
  final FeatureState state;
  final Widget label;
  final Widget? symbol;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double? spaceBetween;
  final double? width;

  final VoidCallback? onTap;
  const BaseFeature({
    Key? key,
    this.type = FeatureType.solid,
    this.state = FeatureState.vertical,
    this.label = const Text(''),
    this.symbol,
    this.padding = const EdgeInsets.all(SpaceManager.MEDIUM),
    this.margin = const EdgeInsets.symmetric(vertical: SpaceManager.ZERO),
    this.spaceBetween = SpaceManager.MEDIUM,
    this.width,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // set up decoration properties
    BoxDecoration decoration = BoxDecoration(
      color: ColorManager.TONE,
      borderRadius: BorderRadius.circular(CornerRadiusManager.SMALL),
      // border: Border.all(
      //   color: ColorManager.ACCENT,
      //   width: 2,
      // ),
    );

    if (type == FeatureType.outlined) {
      decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(CornerRadiusManager.SMALL),
        border: Border.all(
          color: ColorManager.LINE,
          width: 2,
        ),
      );
    }

    // set up icon  or symbol widgets
    Widget symbolWidget = Container();
    if (symbol != null) {
      symbolWidget = symbol!;
    }

    // set up State Selection
    Widget widget = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        symbolWidget,
        SizedBox(height: spaceBetween),
        label,
      ],
    );

    if (state == FeatureState.inline) {
      widget = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          symbolWidget,
          SizedBox(width: spaceBetween),
          label,
        ],
      );
    }

    return Animate(
      effects: AnimationManager.component,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          padding: padding,
          margin: margin,
          decoration: decoration,
          child: widget,
        ),
      ),
    );
  }
}

//***************************************************************/
// *******************    Primary Feature       *****************/
//***************************************************************/
class PrimaryFeature extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? width;
  final VoidCallback? onTap;
  const PrimaryFeature({
    Key? key,
    this.label = '',
    this.icon,
    this.width,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFeature(
      label: SmallLabel(label),
      symbol: SecondaryIcon(icon!),
      type: FeatureType.solid,
      state: FeatureState.vertical,
      width: width,
      onTap: onTap,
    );
  }
}

//***************************************************************/
// *******************   Secondary Feature      *****************/
//***************************************************************/
class SecondaryFeature extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? width;
  final VoidCallback? onTap;
  const SecondaryFeature({
    Key? key,
    this.label = '',
    this.icon,
    this.width,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFeature(
      label: TinyLabel(label),
      symbol: SecondaryIcon(
        icon!,
        size: DimensionManager.TINY,
      ),
      type: FeatureType.solid,
      state: FeatureState.inline,
      width: width,
      spaceBetween: SpaceManager.ZERO,
      onTap: onTap,
      padding: const EdgeInsets.symmetric(
        vertical: SpaceManager.SMALL,
        horizontal: SpaceManager.TINY,
      ),
    );
  }
}
