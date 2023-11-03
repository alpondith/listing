// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/space_manager.dart';
import '../../core/util/color_manager.dart';

//***************************************************************/
// *******************     Base Divider (1px)   *****************/
//***************************************************************/
class _Divider extends StatelessWidget {
  final double thickness;
  final double height;
  final Color? color;

  const _Divider({
    Key? key,
    this.thickness = 1,
    this.height = SpaceManager.XLARGE,
    this.color = ColorManager.LINE,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.component,
      child: Divider(
        color: color,
        thickness: thickness,
        height: height,
      ),
    );
  }
}

//***************************************************************/
// *******************    Cell Divider (1px)    *****************/
//***************************************************************/
class CellDivider extends StatelessWidget {
  final double thickness;
  final double height;
  final Color? color;

  const CellDivider({
    Key? key,
    this.thickness = 0.5,
    this.height = SpaceManager.MEDIUM,
    this.color = ColorManager.LINE,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}

//***************************************************************/
// ******************   List Separator Divider  *****************/
//***************************************************************/
class SeparatorDivider extends StatelessWidget {
  const SeparatorDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _Divider(
      color: ColorManager.LINE,
      height: SpaceManager.MEDIUM,
    );
  }
}

//***************************************************************/
// *******************   Section Divider (2px)  *****************/
//***************************************************************/
class SectionDivider extends StatelessWidget {
  final double thickness;
  final double height;
  final Color? color;

  const SectionDivider({
    Key? key,
    this.thickness = 1,
    this.height = SpaceManager.XLARGE,
    this.color = ColorManager.LINE,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}

//***************************************************************/
// *******************   Module  Divider (8px)  *****************/
//***************************************************************/
class ModuleDivider extends StatelessWidget {
  final double thickness;
  final double height;
  final Color? color;

  const ModuleDivider({
    Key? key,
    this.thickness = 8,
    this.height = SpaceManager.LARGE,
    this.color = ColorManager.LINE,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}
