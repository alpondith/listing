import 'package:get/get.dart';
import 'package:logger/logger.dart';

class TestService extends GetxService {
  @override
  void onInit() async {
    await handle();
    super.onInit();
  }

  handle() async {
    Logger().i("test service activated");
  }
}
