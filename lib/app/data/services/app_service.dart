import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auto_reload_service.dart';
import 'test_service.dart';

class AppService {
  static void init() {
    // Don't remove this line
    WidgetsFlutterBinding.ensureInitialized();

    // Register your service here
    Get.put(TestService());
    Get.put(AutoReloadService());
  }
}
