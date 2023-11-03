import 'package:flutter/material.dart';

import '../../core/util/color_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../atoms/texts.dart';

//*********************************************/
// **************** ICON CARD *****************/
//*********************************************/
class CircularIconTextCard extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final Color iconColor;
  final VoidCallback? onTap;

  const CircularIconTextCard({
    super.key,
    this.color = Colors.white,
    this.title = '',
    this.icon = Icons.person_2_rounded,
    this.iconColor = ColorManager.ACCENT,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        // margin: EdgeInsets.all(2),
        width: 120,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(CornerRadiusManager.MEDIUM),
          border: Border.all(
            width: 1,
            color: ColorManager.INVERSE_ACCENT,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 24,
            ),
            const SizedBox(height: 8),
            SmallLabel(title),
          ],
        ),
      ),
    );
  }
}
