import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/atoms/buttons.dart';
import '../../../../widgets/elements/lists.dart';
import '../controllers/repository_index_controller.dart';

class Filter extends GetView<RepositoryIndexController> {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (v) => controller.filter(v),
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(
          value: "DEFAULT",
          child: FilterOptionList(
            icon: CupertinoIcons.circle_filled,
            text: 'Default',
          ),
        ),
        const PopupMenuItem(
          value: "BY_STAR_ASC",
          child: FilterOptionList(
            icon: CupertinoIcons.star_fill,
            text: 'Star Asc',
          ),
        ),
        const PopupMenuItem(
          value: "BY_STAR_DESC",
          child: FilterOptionList(
            icon: CupertinoIcons.star_fill,
            text: 'Star Desc',
          ),
        ),
        const PopupMenuItem(
          value: "BY_FORK_ASC",
          child: FilterOptionList(
            icon: CupertinoIcons.link,
            text: 'Fork Asc',
          ),
        ),
        const PopupMenuItem(
          value: "BY_FORK_DESC",
          child: FilterOptionList(
            icon: CupertinoIcons.link,
            text: 'Fork Desc',
          ),
        ),
        const PopupMenuItem(
          value: "BY_LATEST",
          child: FilterOptionList(
            icon: CupertinoIcons.layers_alt,
            text: 'Latest',
          ),
        ),
        const PopupMenuItem(
          value: "BY_OLDEST",
          child: FilterOptionList(
            icon: CupertinoIcons.layers_alt,
            text: 'Oldest',
          ),
        ),
      ],
      elevation: 1,
      child: const ActionButton(
        label: 'Filter',
        icon: Icons.filter_alt,
      ),
    );
  }
}
