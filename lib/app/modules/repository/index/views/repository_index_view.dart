import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/util/space_manager.dart';

import '../../../../data/helpers/date_to_age_calculator.dart';
import '../../../../routes/app_pages.dart';
import '../../../../widgets/app_container.dart';
import '../../../../widgets/atoms/icons.dart';
import '../../../../widgets/elements/loading.dart';
import '../../../../widgets/elements/tiles.dart';
import '../../../../widgets/feedback/empty_feedback.dart';
import '../../../../widgets/feedback/error_feedback.dart';
import '../components/filter.dart';
import '../controllers/repository_index_controller.dart';

class RepositoryIndexView extends GetView<RepositoryIndexController> {
  const RepositoryIndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repositories'),
        actions: const [
          Filter(),
          SizedBox(width: SpaceManager.MEDIUM),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: controller.reload,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: controller.scroll,
          child: AppContainer(
            child: controller.obx(
              (data) => Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data?.length ?? 0,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Tile(
                          label: "${data?[index]['name']}",
                          paragraph: "Star : ${data?[index]['stargazers_count']}, Forks : ${data?[index]['forks']}\nAge: ${DateToAgeCalculator().handle(data?[index]['created_at'])}",
                          leading: const PrimaryIcon(Icons.arrow_outward_outlined),
                          trailing: const SecondaryIcon(Icons.chevron_right),
                          type: TileType.fill,
                          padding: const EdgeInsets.all(SpaceManager.MEDIUM),
                          onTap: () => Get.toNamed(Routes.REPOSITORY_SHOW, arguments: data[index]['full_name']),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => controller.paginateLoading ? const PaginateLoading() : Container(),
                  ),
                  const SizedBox(height: SpaceManager.XXLARGE)
                ],
              ),
              onEmpty: const EmptyFeedback(),
              onError: (e) => ErrorFeedback(message: e, onRetry: controller.reload),
              onLoading: const Loading(),
            ),
          ),
        ),
      ),
    );
  }
}

class CupertinoIcons {}
