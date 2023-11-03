import 'package:get/get.dart';

import '../controllers/repository_show_controller.dart';

class RepositoryShowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepositoryShowController>(
      () => RepositoryShowController(),
    );
  }
}
