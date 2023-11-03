import 'package:get/get.dart';

import '../controllers/repository_index_controller.dart';

class RepositoryIndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepositoryIndexController>(
      () => RepositoryIndexController(),
    );
  }
}
