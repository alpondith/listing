import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/util/dimension_manager.dart';
import '../../../../core/util/space_manager.dart';
import '../../../../data/helpers/date_formatter.dart';
import '../../../../data/helpers/date_to_age_calculator.dart';
import '../../../../widgets/app_container.dart';
import '../../../../widgets/atoms/buttons.dart';
import '../../../../widgets/atoms/icons.dart';
import '../../../../widgets/elements/avatar.dart';
import '../../../../widgets/elements/loading.dart';
import '../../../../widgets/elements/tiles.dart';
import '../../../../widgets/feedback/empty_feedback.dart';
import '../../../../widgets/feedback/error_feedback.dart';
import '../controllers/repository_show_controller.dart';

class RepositoryShowView extends GetView<RepositoryShowController> {
  const RepositoryShowView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: controller.obx(
        (data) => RefreshIndicator(
          onRefresh: controller.reload,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: AppContainer(
              child: controller.obx(
                (data) => Column(
                  children: [
                    Avatar(
                      url: data['owner']['avatar_url'],
                      size: 172,
                    ),
                    Tile(
                      label: 'Owner',
                      paragraph: data['owner']['login'] ?? '',
                      leading: const SecondaryIcon(Icons.read_more),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Name',
                      paragraph: data['name'] ?? '',
                      leading: const SecondaryIcon(Icons.read_more),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Age',
                      paragraph: DateToAgeCalculator().handle(data['created_at']),
                      leading: const SecondaryIcon(Icons.bubble_chart_outlined),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Star',
                      paragraph: data['stargazers_count'].toString(),
                      leading: const SecondaryIcon(Icons.star_border_outlined),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Fork',
                      paragraph: data['forks_count'].toString(),
                      leading: const SecondaryIcon(Icons.fork_right_rounded),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Open Issues',
                      paragraph: data['open_issues_count'].toString(),
                      leading: const SecondaryIcon(Icons.commit_rounded),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Subscriber',
                      paragraph: data['subscribers_count'].toString(),
                      leading: const SecondaryIcon(Icons.people_outline),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Repository Path',
                      paragraph: data['full_name'] ?? '',
                      leading: const SecondaryIcon(Icons.link),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Last Updated',
                      paragraph: DateFormatter().handle(data['updated_at']),
                      leading: const SecondaryIcon(Icons.bubble_chart_outlined),
                      type: TileType.bottomLine,
                      focus: TileFocus.paragraph,
                    ),
                    Tile(
                      label: 'Description',
                      paragraph: data['description'] ?? '',
                      leading: const SecondaryIcon(Icons.receipt_outlined),
                      type: TileType.bottomLine,
                      focus: TileFocus.label,
                      padding: const EdgeInsets.all(SpaceManager.MEDIUM),
                    ),
                    Tile(
                      label: 'Topics',
                      paragraph: data['topics'].join(', '),
                      leading: const SecondaryIcon(Icons.toll_sharp),
                      type: TileType.bottomLine,
                      focus: TileFocus.label,
                      padding: const EdgeInsets.all(SpaceManager.MEDIUM),
                    ),
                    const SizedBox(height: SpaceManager.MEDIUM),
                    PrimaryButton(
                      label: 'Get Back',
                      onTap: () => Get.back(),
                    ),
                    const SizedBox(height: SpaceManager.MEDIUM),
                  ],
                ),
              ),
            ),
          ),
        ),
        onEmpty: const EmptyFeedback(),
        onError: (e) => ErrorFeedback(message: e, onRetry: controller.reload),
        onLoading: const Loading(),
      ),
    );
  }
}
