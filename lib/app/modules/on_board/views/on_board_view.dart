import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:get/get.dart';

import '../../../core/util/asset_manager.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/app_container.dart';
import '../../../widgets/atoms/buttons.dart';
import '../../../widgets/atoms/texts.dart';
import '../controllers/on_board_controller.dart';

class OnBoardView extends GetView<OnBoardController> {
  const OnBoardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: AppContainer(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Lottie.asset(AssetManager.HELLO_LOTTIE),
                  ),
                  const LargeLabel('Welcome to Listing App'),
                ],
              ),
            ),
            PrimaryButton(
              label: 'Get Started',
              onTap: () => Get.offAndToNamed(Routes.HOME),
            ),
          ],
        ),
      ),
    );
  }
}
