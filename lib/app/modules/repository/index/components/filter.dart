import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listing/app/modules/repository/controllers/home_controller.dart';

import '../../../../widgets/atoms/buttons.dart';
import '../../../../widgets/elements/lists.dart';

class Filter extends GetView<HomeController> {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (v) => controller.filter(v),
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(
          value: "ALL",
          child: FilterOptionList(
            icon: CupertinoIcons.person_2_fill,
            text: 'All',
          ),
        ),
        const PopupMenuItem(
          value: "Owner",
          child: FilterOptionList(
            icon: CupertinoIcons.person_fill,
            text: 'Owner',
          ),
        ),
        const PopupMenuItem(
          value: "MANAGER",
          child: FilterOptionList(
            icon: CupertinoIcons.person,
            text: 'Manager',
          ),
        ),
        const PopupMenuItem(
          value: "STAFF",
          child: FilterOptionList(
            icon: CupertinoIcons.person,
            text: 'Staff',
          ),
        ),
        const PopupMenuItem(
          value: "HOURLY",
          child: FilterOptionList(
            icon: CupertinoIcons.alarm_fill,
            text: 'Hourly waged',
          ),
        ),
        const PopupMenuItem(
          value: "DAILY",
          child: FilterOptionList(
            icon: CupertinoIcons.calendar,
            text: 'Daily waged',
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
