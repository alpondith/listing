import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:logger/logger.dart';

class ExceptionFilter {
  static dynamic handle(Object e) {
    Response<dynamic> response;
    if (e is TimeoutException) {
      Logger().e('408 : Request Timeout');
      response = const Response(
        statusCode: 408,
        statusText: 'Request Timeout',
      );
    } else if (e is SocketException) {
      Logger().e('001 : Socket Exception');
      response = const Response(
        statusCode: 001,
        statusText: 'Socket Exception',
      );
    } else {
      Logger().e('000 : Something is wrong');
      response = const Response(
        statusCode: 000,
        statusText: 'Something is wrong',
      );
    }

    return Future.error(response);
  }
}
