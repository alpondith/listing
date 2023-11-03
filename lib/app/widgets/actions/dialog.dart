import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/util/color_manager.dart';
import '../../core/util/corner_radius_manager.dart';
import '../atoms/texts.dart';

//*********************************************/
// ************* Show   Dialog    *************/
//*********************************************/
class ShowDialog {
  static handle({
    String title = "Are you sure?",
    String? message,
    Widget? child,
    double maxWidth = 400,
    required Function() onConfirm,
  }) {
    return Get.defaultDialog(
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      barrierDismissible: true,
      radius: CornerRadiusManager.TINY,
      content: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            MediumLabel(title),
            const SizedBox(height: 8),
            message != null ? SmallParagraph(message) : Container(),
            const SizedBox(height: 8),
            child ?? Container(),
            const Divider(color: Colors.grey),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () => Get.back(),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: ColorManager.DANGER),
                  ),
                  child: const Text('No', style: TextStyle(color: Colors.red)),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    onConfirm();
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.ACCENT,
                  ),
                  child: const Text('Yes'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//*********************************************/
// ************* Confirm Dialog   *************/
//*********************************************/
class ConfirmDialog {
  static handle({
    String title = "Are you sure ?",
    String? message,
    required Function() onConfirm,
  }) {
    return ShowDialog.handle(
      title: title,
      message: message,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.question_mark_sharp,
          size: 50,
          color: ColorManager.ACCENT,
        ),
      ),
      onConfirm: onConfirm,
    );
  }
}
