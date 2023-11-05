import 'package:flutter/material.dart';

import '../../core/util/asset_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../../core/util/dimension_manager.dart';
import '../../core/util/space_manager.dart';

class Avatar extends StatelessWidget {
  final String? url;
  final double size;

  const Avatar({
    super.key,
    required this.url,
    this.size = DimensionManager.XLARGE,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Container(
        padding: const EdgeInsets.all(SpaceManager.MEDIUM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CornerRadiusManager.FULL),
          border: Border.all(
            color: Colors.transparent,
            width: 4,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(CornerRadiusManager.FULL),
          child: Image.network(
            url ?? AssetManager.MAIN_LOGO,
            height: size,
            width: size,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
