import 'package:get_storage/get_storage.dart';

import 'api_provider.dart';

class AuthApiProvider extends ApiProvider {
  AuthApiProvider()
      : super(headers: {
          'Authorization': 'Bearer ${GetStorage().read('token')}',
        });
}
