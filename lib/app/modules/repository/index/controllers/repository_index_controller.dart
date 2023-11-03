import 'package:get/get.dart';

import '../../../../data/api/paginate_state_transition.dart';

class RepositoryIndexController extends GetxController with StateMixin<dynamic>, PaginateStateTransition, ScrollMixin {
  // https://api.github.com/search/repositories?q=flutter&sort=stars&order=desc&page=1&per_page=3
  String initialPath = '/search/repositories?q=Flutter';

  @override
  void onInit() {
    super.onInit();
    load(initialPath);
  }

  filter(dynamic value) {
    path = (value == "ALL") ? initialPath : "$initialPath?filter[role]=$value";
    path = (value == "DAILY" || value == "HOURLY") ? "$initialPath?filter[wage_type]=$value" : path;
    reload();
  }

  String formatDate(String date) {
    final createdAt = DateTime.parse(date);
    final now = DateTime.now();
    final difference = now.difference(createdAt);
    final years = difference.inDays ~/ 365;
    final months = difference.inDays % 365 ~/ 30;
    return "$years years $months months";
  }
}
