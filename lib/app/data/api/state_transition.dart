import 'package:get/get.dart';

import 'api_provider.dart';

mixin StateTransition on StateMixin<dynamic> {
  String path = '';

  dynamic data = {};

  void load(String path) {
    this.path = path;
    ApiProvider().getResponse(path: path).then(_onSuccess, onError: _onError);
  }

  Future<void> reload() async {
    change(null, status: RxStatus.loading());
    load(path);
  }

  void _onSuccess(response) {
    if (response.isEmpty) {
      change(null, status: RxStatus.empty());
    } else {
      data = response;
      change(data, status: RxStatus.success());
    }
  }

  void _onError(error) => change('Error', status: RxStatus.error(error.statusText));
}
