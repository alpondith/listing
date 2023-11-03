import 'package:flutter/material.dart';

import '../util/color_manager.dart';

class ThemePrimarySwatch {
  static final data = MaterialColor(
    ColorManager.ACCENT.value,
    <int, Color>{
      50: ColorManager.ACCENT.withOpacity(0.05),
      100: ColorManager.ACCENT.withOpacity(0.1),
      200: ColorManager.ACCENT.withOpacity(0.2),
      300: ColorManager.ACCENT.withOpacity(0.3),
      400: ColorManager.ACCENT.withOpacity(0.4),
      500: ColorManager.ACCENT.withOpacity(0.5),
      600: ColorManager.ACCENT.withOpacity(0.6),
      700: ColorManager.ACCENT.withOpacity(0.7),
      800: ColorManager.ACCENT.withOpacity(0.8),
      900: ColorManager.ACCENT.withOpacity(0.9),
    },
  );
}
