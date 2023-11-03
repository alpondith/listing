import 'package:flutter/material.dart';

import '../util/color_manager.dart';
import '../util/font_manager.dart';
import 'theme_app_bar.dart';

import 'theme_primary_swatch.dart';
import 'theme_text_selection.dart';

class AppTheme {
  final lightTheme = ThemeData(
    fontFamily: FontManager.TEXT_GFONT.fontFamily,
    appBarTheme: ThemeAppBar.data,
    textSelectionTheme: ThemeTextSelection.data,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: ColorManager.SURFACE,
    primarySwatch: ThemePrimarySwatch.data,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  final darkTheme = ThemeData.dark().copyWith();
}
