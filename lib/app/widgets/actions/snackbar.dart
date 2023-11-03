import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/util/color_manager.dart';
import '../atoms/texts.dart';

//the SnackbarHandler and SecondarySnackbar classes are identical

class SnackbarHandler {
  static SnackbarController handle({
    String title = "Notification",
    String message = "",
    Color color = ColorManager.ACCENT,
    bool isPrimary = true,
  }) {
    return Get.snackbar(
      title,
      message,
      titleText: MediumLabel(
        title,
        color: isPrimary ? ColorManager.ON_TONE : color,
      ),
      messageText: SmallParagraph(
        message,
        color: isPrimary ? ColorManager.ON_TONE : color,
      ),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.fromLTRB(20, 16, 16, 16),
      duration: const Duration(seconds: 4),
      backgroundColor:
          isPrimary ? ColorManager.DIM_ACCENT : color.withOpacity(1),
      icon: isPrimary
          ? null
          : Icon(
              Icons.notifications_active,
              color: color,
            ),
      shouldIconPulse: true,
      snackPosition: SnackPosition.TOP,
      borderRadius: 12,
      maxWidth: 400,
      instantInit: true,
    );
  }
}
