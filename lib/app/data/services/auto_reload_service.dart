import 'dart:async';

import 'package:get/get.dart';

import '../../modules/repository/index/controllers/repository_index_controller.dart';

class AutoReloadService extends GetxService {
  @override
  void onInit() async {
    await handle();
    super.onInit();
  }

  handle() async {
    Timer.periodic(
      const Duration(seconds: 30),
      (Timer t) {
        if (Get.isRegistered<RepositoryIndexController>()) {
          Get.find<RepositoryIndexController>().reload();
        }
      },
    );
  }
}
