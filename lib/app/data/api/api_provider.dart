import 'dart:async';

import 'package:get/get.dart';

import '../helpers/internet_connection.dart';
import 'api_endpoint.dart';
import 'exception_filter.dart';
import 'response_filter.dart';

class ApiProvider extends GetConnect {
  Map<String, String>? headers;

  ApiProvider({Map<String, String>? headers}) {
    if (headers != null) {
      // merge two headers
      this.headers = {
        ...defaultHeaders,
        ...headers,
      };
    } else {
      this.headers = defaultHeaders;
    }
    httpClient.timeout = const Duration(seconds: 10);
    httpClient.maxAuthRetries = 3;
    InternetConnection.check();
  }

  static const Map<String, String> defaultHeaders = {
    'Accept': 'application/json',
    'contentType': 'application/json',
  };

  Future<dynamic> getResponse({required String path, bool url = true}) async {
    try {
      // calls http client get method
      Response<dynamic> response = await httpClient.get(
        url ? ApiEndpoint.URL + path : path,
        headers: headers,
      );
      return ResponseFilter.handle(response);
    } catch (e) {
      return ExceptionFilter.handle(e);
    }
  }

  Future<dynamic> postResponse({required String path, dynamic data, bool url = true}) async {
    try {
      // calls http client post method
      Response<dynamic> response = await httpClient.post(
        url ? ApiEndpoint.URL + path : path,
        body: data,
        headers: headers,
      );
      return ResponseFilter.handle(response);
    } catch (e) {
      return ExceptionFilter.handle(e);
    }
  }

  Future<dynamic> putResponse({required String path, dynamic data, bool url = true}) async {
    try {
      // calls http client put method
      Response<dynamic> response = await httpClient.put(
        url ? ApiEndpoint.URL + path : path,
        body: data,
        headers: headers,
      );
      return ResponseFilter.handle(response);
    } catch (e) {
      return ExceptionFilter.handle(e);
    }
  }

  Future<dynamic> deleteResponse({required String path, bool url = true}) async {
    try {
      // calls http client delete method
      Response<dynamic> response = await httpClient.delete(
        url ? ApiEndpoint.URL + path : path,
        headers: headers,
      );
      return ResponseFilter.handle(response);
    } catch (e) {
      return ExceptionFilter.handle(e);
    }
  }
}
