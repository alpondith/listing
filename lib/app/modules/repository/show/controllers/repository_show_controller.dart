import 'package:get/get.dart';

import '../../../../data/api/state_transition.dart';

class RepositoryShowController extends GetxController with StateMixin<dynamic>, StateTransition {
  // arguments
  final repository = Get.arguments;

  @override
  void onInit() async {
    super.onInit();
    load('/repos/$repository');
  }
}
