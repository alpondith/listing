import 'package:get/get.dart';

import '../modules/on_board/bindings/on_board_binding.dart';
import '../modules/on_board/views/on_board_view.dart';
import '../modules/repository/index/bindings/repository_index_binding.dart';
import '../modules/repository/index/views/repository_index_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REPOSITORY_INDEX;

  static final routes = [
    GetPage(
      name: _Paths.REPOSITORY_INDEX,
      page: () => const RepositoryIndexView(),
      binding: RepositoryIndexBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARD,
      page: () => const OnBoardView(),
      binding: OnBoardBinding(),
    ),
  ];
}
