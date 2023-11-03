import 'package:get/get.dart';

import '../helpers/internet_connection.dart';
import 'exception_filter.dart';
import 'response_filter.dart';

class ExternalApiProvider extends GetConnect {
  Map<String, String>? headers;

  ExternalApiProvider({Map<String, String>? headers}) {
    if (headers != null) {
      // merge two headers
      this.headers = {
        ...defaultHeaders,
        ...headers,
      };
    } else {
      this.headers = defaultHeaders;
    }
    InternetConnection.check();
  }

  static const Map<String, String> defaultHeaders = {
    'Accept': 'application/json',
    'contentType': 'application/json',
  };

  Future<dynamic> getResponse({required String url}) async {
    try {
      // calls http client get method
      Response<dynamic> response = await httpClient.get(
        url,
        headers: headers,
      );
      // handles response
      return ResponseFilter.handle(response);
    } catch (e) {
      return ExceptionFilter.handle(e);
    }
  }
}
