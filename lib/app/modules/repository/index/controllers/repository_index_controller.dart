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
    path = (value == "DEFAULT") ? initialPath : initialPath;
    path = (value == "BY_STAR_ASC") ? "$initialPath&sort=stars&order=desc" : path;
    path = (value == "BY_STAR_DESC") ? "$initialPath&sort=stars&order=asc" : path;
    path = (value == "BY_FORK_ASC") ? "$initialPath&sort=forks&order=desc" : path;
    path = (value == "BY_FORK_DESC") ? "$initialPath&sort=forks&order=asc" : path;

    // TODO: find the correct path for this filter (it's not working)
    path = (value == "BY_LATEST") ? "$initialPath&sort=created_at&direction=desc" : path;
    path = (value == "BY_OLDEST") ? "$initialPath&sort=created_at&direction=asc" : path;

    reload();
  }
}
