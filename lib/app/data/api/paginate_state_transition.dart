import 'package:get/get.dart';

import 'auth_api_provider.dart';

mixin PaginateStateTransition on StateMixin<dynamic> {
  String path = '';
  String? nextPage;
  List<dynamic>? data = [];

  final _paginateLoading = false.obs;
  get paginateLoading => _paginateLoading.value;
  set setPaginateLoading(bool value) => _paginateLoading.value = value;

  //*****************************************/
  //******   Load & Reload Functions  *******/
  //*****************************************/

  void load(String path) {
    this.path = path;
    AuthApiProvider().getResponse(path: path).then(_onSuccess, onError: _onError);
  }

  Future<void> reload() async {
    change(null, status: RxStatus.loading());
    data?.clear();
    load(path);
  }

  //*****************************************/
  //****   Success & Error Functions  *******/
  //*****************************************/

  void _onSuccess(response) {
    if (response['data'].isEmpty) {
      change(null, status: RxStatus.empty());
    } else {
      nextPage = response['links']['next'];
      data!.isEmpty ? data = response['data'] : data?.addAll(response['data']);
      change(data, status: RxStatus.success());
    }
  }

  void _onError(error) => change('Error', status: RxStatus.error(error.statusText));

  //*****************************************/
  //***********   Scroll Functions  *********/
  //*****************************************/

  Future<void> onTopScroll() async {}

  Future<void> onEndScroll() async {
    if (nextPage != null) {
      setPaginateLoading = true;
      await AuthApiProvider().getResponse(path: nextPage!, url: false).then(_onSuccess, onError: _onError);
      setPaginateLoading = false;
    }
  }
}
