import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'api_provider.dart';

mixin PaginateStateTransition on StateMixin<dynamic> {
  String path = '';
  String? nextPage;
  int page = 1;
  List<dynamic> data = [];

  final _paginateLoading = false.obs;
  get paginateLoading => _paginateLoading.value;
  set setPaginateLoading(bool value) => _paginateLoading.value = value;

  //*****************************************/
  //******   Load & Reload Functions  *******/
  //*****************************************/

  void load(String path) {
    this.path = path;
    nextPage = "$path&page=$page&per_page=10";
    ApiProvider().getResponse(path: nextPage!).then(_onSuccess, onError: _onError);
  }

  Future<void> reload() async {
    change(null, status: RxStatus.loading());
    data.clear();
    page = 1;
    load(path);
  }

  //*****************************************/
  //****   Success & Error Functions  *******/
  //*****************************************/

  void _onSuccess(response) {
    if (response['items'].isEmpty) {
      change(null, status: RxStatus.empty());
    } else {
      page++;
      nextPage = "$path&page=$page&per_page=10";
      data.isEmpty ? data = response['items'] : data.addAll(response['items']);
      change(data, status: RxStatus.success());
    }
  }

  void _onError(error) => change('Error', status: RxStatus.error(error.statusText));

  //*****************************************/
  //***********   Scroll Functions  *********/
  //*****************************************/

  Future<void> onTopScroll() async {}

  Future<void> onEndScroll() async {
    Logger().i(nextPage);
    setPaginateLoading = true;
    await ApiProvider().getResponse(path: nextPage!).then(_onSuccess, onError: _onError);
    setPaginateLoading = false;
  }
}
