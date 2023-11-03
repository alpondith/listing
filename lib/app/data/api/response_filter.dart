import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'exception_filter.dart';

class ResponseFilter {
  static dynamic handle(Response<dynamic> response) {
    // Response is successfully received
    if (response.status.isOk) {
      Logger().i(response.body);
      return response.body;
    } else {
      if (response.statusCode == null) {
        Logger().e(response.statusText);
        return ExceptionFilter.handle(response);
      }

      // handles response
      switch (response.statusCode) {
        case 401:
          Logger().e(' 401 : Unauthorized');
          // Get.offAllNamed(Routes.LOGIN);
          break;

        case 400:
          Logger().e(' 400 : Not found');
          break;

        default:
          Logger().e(' ${response.statusCode} : ${response.statusText}');
          break;
      }
      return Future.error(response);
    }
  }
}
