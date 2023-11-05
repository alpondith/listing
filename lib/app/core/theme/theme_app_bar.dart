import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/color_manager.dart';
import '../util/dimension_manager.dart';
import '../util/font_manager.dart';
import '../util/shadow_manager.dart';

class ThemeAppBar {
  static final data = AppBarTheme(
    centerTitle: false,
    color: ColorManager.SURFACE,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
      shadows: ShadowManager.shallow,
    ),
    titleTextStyle: FontManager.TITLE_GFONT.copyWith(
      fontSize: 20,
      height: 1.5,
      fontWeight: FontManager.LABEL_FONT_WEIGHT,
      letterSpacing: FontManager.TEXT_LETTER_SPACE,
      color: FontManager.COLOR,
    ),
    toolbarHeight: DimensionManager.LARGE,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
