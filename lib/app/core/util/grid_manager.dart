// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:get/get.dart';

class GridManager {
  static const double SPACE = 8;
  static double ONE = Get.width - 32;
  static double TWO = (Get.width - (32 + 1 * SPACE)) / 2;
  static double THREE = (Get.width - (32 + 2 * SPACE)) / 3;
  static double FOUR = (Get.width - (32 + 3 * SPACE)) / 4;
}
