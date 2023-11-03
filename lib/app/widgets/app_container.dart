// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ContainerType { REGULAR, FLUID }

class AppContainer extends StatelessWidget {
  final Widget child;
  final ContainerType type;
  final double? height;
  final double? minHeight;

  const AppContainer({
    super.key,
    required this.child,
    this.type = ContainerType.REGULAR,
    this.height,
    this.minHeight,
  });

  @override
  Widget build(BuildContext context) {
    double hPadding = 16;
    double paddingTop = 16;
    double paddingBottom = 16; // reason : helps to show paginate loader.
    double maxWidth = 1000;

    if (type == ContainerType.REGULAR &&
        MediaQuery.of(context).size.width > maxWidth) {
      hPadding = (MediaQuery.of(context).size.width - maxWidth) / 2;
    }

    return Container(
      height: height,
      // color: Colors.red.shade100,
      padding:
          EdgeInsets.fromLTRB(hPadding, paddingTop, hPadding, paddingBottom),
      constraints: BoxConstraints(
        minHeight: Get.height - 72,
      ),
      child: child,
    );
  }
}
