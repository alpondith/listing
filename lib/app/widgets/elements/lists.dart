import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/space_manager.dart';
import '../atoms/icons.dart';
import '../atoms/texts.dart';

//***************************************************************/
// *******************    Filter Option List    *****************/
//***************************************************************/
class FilterOptionList extends StatelessWidget {
  final IconData? icon;
  final String text;
  const FilterOptionList({
    super.key,
    this.icon,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.component,
      child: Row(
        children: [
          TertiaryIcon(icon),
          const SizedBox(width: SpaceManager.SMALL),
          SmallParagraph(text),
        ],
      ),
    );
  }
}
