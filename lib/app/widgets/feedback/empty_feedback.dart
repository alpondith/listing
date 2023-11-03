import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/util/dimension_manager.dart';
import '../../core/util/space_manager.dart';
import '../atoms/texts.dart';
import '../atoms/titles.dart';

class EmptyFeedback extends StatelessWidget {
  final String message;
  final Widget image;
  final String title;

  const EmptyFeedback({
    this.message = "No data found",
    this.title = "Title",
    this.image = const SizedBox(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 2, // Set the height to half of the screen height
      width: Get.width,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DimensionManager.SMALL),
        ),
        child: Padding(
          padding: const EdgeInsets.all(DimensionManager.MEDIUM),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Center-align vertically
            crossAxisAlignment: CrossAxisAlignment.center,
            // Center-align horizontally
            children: [
              Center(child: image),
              // Center-align the image
              const SizedBox(height: SpaceManager.LARGE),
              Center(child: MediumHeading(title)),
              // Center-align the title
              const SizedBox(height: SpaceManager.SMALL),
              Center(child: MediumParagraph(message)),
              // Center-align the message
            ],
          ),
        ),
      ),
    );
  }
}
