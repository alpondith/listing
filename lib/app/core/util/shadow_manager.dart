// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ShadowManager {
  static List<BoxShadow> shallow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 1,
      offset: const Offset(0.5, 0.5),
    ),
  ];

  static List<BoxShadow> deep = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 1,
      blurRadius: 1,
      offset: const Offset(0.5, 0.5),
    ),
  ];
}
