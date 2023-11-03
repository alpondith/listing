// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/font_manager.dart';

//***************************************************************/
//***************************************************************/
// ***********************    Heading    ************************/
//***************************************************************/
//***************************************************************/

//***************************************************************/
// ***********************      Base     ************************/
//***************************************************************/

class _HeadingTitle extends StatelessWidget {
  final String? text;
  final Color color;
  final double fontSize;
  final double height;
  const _HeadingTitle(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    required this.fontSize,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.typography,
      child: Text(
        text!,
        style: FontManager.TITLE_GFONT.copyWith(
          fontSize: fontSize,
          height: height,
          fontWeight: FontManager.HEADING_FONT_WEIGHT,
          letterSpacing: FontManager.HEADING_LETTER_SPACE,
          color: color,
        ),
      ),
    );
  }
}

//***************************************************************/
// ***********************      Tiny     ************************/
//***************************************************************/
class TinyHeading extends StatelessWidget {
  final String? text;
  final Color color;
  const TinyHeading(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _HeadingTitle(
      text,
      color: color,
      fontSize: 20,
      height: 1.4,
    );
  }
}

//***************************************************************/
// ***********************     Small     ************************/
//***************************************************************/
class SmallHeading extends StatelessWidget {
  final String? text;
  final Color color;
  const SmallHeading(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _HeadingTitle(
      text,
      color: color,
      fontSize: 24,
      height: 1.334,
    );
  }
}

//***************************************************************/
// ***********************     Medium    ************************/
//***************************************************************/
class MediumHeading extends StatelessWidget {
  final String? text;
  final Color color;
  const MediumHeading(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _HeadingTitle(
      text,
      color: color,
      fontSize: 28,
      height: 1.286,
    );
  }
}

//***************************************************************/
// ***********************     Large     ************************/
//***************************************************************/
class LargeHeading extends StatelessWidget {
  final String? text;
  final Color color;
  const LargeHeading(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _HeadingTitle(
      text,
      color: color,
      fontSize: 32,
      height: 1.250,
    );
  }
}

//***************************************************************/
// ***********************     XLarge    ************************/
//***************************************************************/
class XLargeHeading extends StatelessWidget {
  final String? text;
  final Color color;
  const XLargeHeading(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _HeadingTitle(
      text,
      color: color,
      fontSize: 36,
      height: 1.223,
    );
  }
}

//***************************************************************/
// ***********************     XXLarge    ***********************/
//***************************************************************/
class XXLargeHeading extends StatelessWidget {
  final String? text;
  final Color color;
  const XXLargeHeading(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _HeadingTitle(
      text,
      color: color,
      fontSize: 40,
      height: 1.300,
    );
  }
}

//***************************************************************/
//***************************************************************/
// ***********************    Display    ************************/
//***************************************************************/
//***************************************************************/

//***************************************************************/
// ***********************      Base     ************************/
//***************************************************************/

class _DisplayTitle extends StatelessWidget {
  final String? text;
  final Color color;
  final double fontSize;
  final double height;
  const _DisplayTitle(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    required this.fontSize,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.typography,
      child: Text(
        text!,
        style: FontManager.TITLE_GFONT.copyWith(
          fontSize: fontSize,
          height: height,
          fontWeight: FontManager.DISPLAY_FONT_WEIGHT,
          letterSpacing: FontManager.DISPLAY_LETTER_SPACE,
          color: color,
        ),
      ),
    );
  }
}

//***************************************************************/
// ***********************     Tiny      ************************/
//***************************************************************/
class TinyDisplay extends StatelessWidget {
  final String? text;
  final Color color;
  const TinyDisplay(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _DisplayTitle(
      text,
      color: color,
      fontSize: 44,
      height: 1.182,
    );
  }
}

//***************************************************************/
// ***********************     Small     ************************/
//***************************************************************/
class SmallDisplay extends StatelessWidget {
  final String? text;
  final Color color;
  const SmallDisplay(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _DisplayTitle(
      text,
      color: color,
      fontSize: 52,
      height: 1.231,
    );
  }
}

//***************************************************************/
// ***********************     Medium    ************************/
//***************************************************************/
class MediumDisplay extends StatelessWidget {
  final String? text;
  final Color color;
  const MediumDisplay(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _DisplayTitle(
      text,
      color: color,
      fontSize: 72,
      height: 1.250,
    );
  }
}

//***************************************************************/
// ***********************     Large     ************************/
//***************************************************************/
class LargeDisplay extends StatelessWidget {
  final String? text;
  final Color color;
  const LargeDisplay(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
  });

  @override
  Widget build(BuildContext context) {
    return _DisplayTitle(
      text,
      color: color,
      fontSize: 96,
      height: 1.1667,
    );
  }
}
