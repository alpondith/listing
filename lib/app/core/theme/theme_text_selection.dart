import 'package:flutter/material.dart';

import '../util/color_manager.dart';

class ThemeTextSelection {
  static TextSelectionThemeData data = TextSelectionThemeData(
    cursorColor: ColorManager.ACCENT,
    selectionColor: ColorManager.ACCENT.withOpacity(.4),
    selectionHandleColor: ColorManager.ACCENT,
  );
}
