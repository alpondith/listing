// ignore_for_file: constant_identifier_names, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class ColorManager {
  // https://www.youtube.com/watch?v=eXcKOqviLE0&ab_channel=TheFuturAcademy

  // Color Pallets Source
  // https://coolors.co/palette/f8f9fa-e9ecef-dee2e6-ced4da-adb5bd-6c757d-495057-343a40-212529

  // Accent or Brand color
  static const Color ACCENT = Colors.black;
  static const Color DIM_ACCENT = Color(0xffc7c7c7);
  static const Color INVERSE_ACCENT = Color(0xffe9e9e9);
  static const Color ON_ACCENT = Colors.white;

  static const Color TONE = Color.fromARGB(255, 241, 241, 241);
  static const Color ON_TONE = Colors.black;

  // Attention or Alert Colors
  static const Color SUCCESS = Color(0xff00B922);
  static const Color DANGER = Color(0xffff0000);

  static Color DIM_SUCCESS = SUCCESS.withOpacity(0.3);
  static Color DIM_DANGER = DANGER.withOpacity(0.3);

  static Color INVERSE_SUCCESS = SUCCESS.withOpacity(0.1);
  static Color INVERSE_DANGER = DANGER.withOpacity(0.1);

  static const Color ON_SUCCESS = Colors.white;
  static const Color ON_DANGER = Colors.white;

  // Usecase : background color
  static const Color SURFACE = Colors.white;
  static const Color SURFACE_ALT = Color.fromARGB(255, 245, 245, 245);

  // Usecase : border , divider , outline color
  static const Color LINE = Color.fromARGB(255, 219, 219, 219);
  // static const Color LINE = Color.fromARGB(255, 255, 201, 170);

  static const Color DISABLED = Color.fromARGB(255, 224, 224, 224);
}
