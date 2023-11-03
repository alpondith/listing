// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import '../../core/util/color_manager.dart';

//***************************************************************/
// ******************      Base Switch   ************************/
//***************************************************************/
class _Switch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  final Color activeColor;
  final Color activeTrackColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;

  const _Switch({
    Key? key,
    this.value = true,
    required this.onChanged,
    this.activeColor = ColorManager.ACCENT,
    this.activeTrackColor = ColorManager.DIM_ACCENT,
    this.inactiveThumbColor = ColorManager.DIM_ACCENT,
    this.inactiveTrackColor = ColorManager.DIM_ACCENT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      value: value,
      onChanged: onChanged,
    );
  }
}

//***************************************************************/
// ******************    Toggle Switch   ************************/
//***************************************************************/
class ToggleSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  const ToggleSwitch({
    Key? key,
    this.value = true,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Switch(
      value: value,
      onChanged: onChanged,
    );
  }
}
