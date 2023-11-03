// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/util/animation_manager.dart';
import '../../core/util/font_manager.dart';

// Naming convention : (COLOR)_(SIZE)_(TEXT_TYPE)

//***************************************************************/
//***************************************************************/
// ***********************   Paragraph   ************************/
//***************************************************************/
//***************************************************************/

//***************************************************************/
// ***********************      Base     ************************/
//***************************************************************/
class _ParagraphText extends StatelessWidget {
  final String? text;
  final Color color;
  final double fontSize;
  final double height;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow overflow;

  const _ParagraphText(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    required this.fontSize,
    required this.height,
    this.textAlign = TextAlign.start,
    this.maxLines = 1000,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.typography,
      child: Text(
        text!,
        textAlign: textAlign,
        style: FontManager.TEXT_GFONT.copyWith(
          fontSize: fontSize,
          height: height,
          fontWeight: FontManager.PARAGRAPH_FONT_WEIGHT,
          letterSpacing: FontManager.TEXT_LETTER_SPACE,
          color: color,
        ),
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}

//***************************************************************/
// ************************    Tiny     *************************/
//***************************************************************/
class TinyParagraph extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;

  const TinyParagraph(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return _ParagraphText(
      text,
      color: color,
      fontSize: 12,
      height: 1.667,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

//***************************************************************/
// ************************    Small    *************************/
//***************************************************************/
class SmallParagraph extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;

  const SmallParagraph(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return _ParagraphText(
      text,
      color: color,
      fontSize: 14,
      height: 1.429,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

//***************************************************************/
// ************************   Medium    *************************/
//***************************************************************/
class MediumParagraph extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;

  const MediumParagraph(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return _ParagraphText(
      text,
      color: color,
      fontSize: 16,
      height: 1.5,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

//***************************************************************/
// ************************   Large   ***************************/
//***************************************************************/
class LargeParagraph extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;

  const LargeParagraph(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return _ParagraphText(
      text,
      color: color,
      fontSize: 18,
      height: 1.555,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

//***************************************************************/
//***************************************************************/
// ********************   Lite Paragraph   **********************/
//***************************************************************/
//***************************************************************/

//***************************************************************/
// ************************   Tiny    ***************************/
//***************************************************************/
class LiteTinyParagraph extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteTinyParagraph(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return TinyParagraph(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Small   ***************************/
//***************************************************************/
class LiteSmallParagraph extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteSmallParagraph(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return SmallParagraph(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Medium   ***************************/
//***************************************************************/
class LiteMediumParagraph extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteMediumParagraph(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return MediumParagraph(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Large   ***************************/
//***************************************************************/
class LiteLargeParagraph extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteLargeParagraph(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return LargeParagraph(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
//***************************************************************/
// ***********************     Label     ************************/
//***************************************************************/
//***************************************************************/

//***************************************************************/
// ***********************      Base     ************************/
//***************************************************************/
class _LabelText extends StatelessWidget {
  final String? text;
  final Color color;
  final double fontSize;
  final double height;
  final TextAlign? textAlign;

  const _LabelText(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    required this.fontSize,
    required this.height,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: AnimationManager.typography,
      child: Text(
        text!,
        textAlign: textAlign,
        style: FontManager.TEXT_GFONT.copyWith(
          fontSize: fontSize,
          height: height,
          fontWeight: FontManager.LABEL_FONT_WEIGHT,
          letterSpacing: FontManager.TEXT_LETTER_SPACE,
          color: color,
        ),
      ),
    );
  }
}

//***************************************************************/
// ************************    Tiny     *************************/
//***************************************************************/
class TinyLabel extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;

  const TinyLabel(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return _LabelText(
      text,
      color: color,
      fontSize: 12,
      height: 1.334,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************    Small    *************************/
//***************************************************************/
class SmallLabel extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;

  const SmallLabel(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return _LabelText(
      text,
      color: color,
      fontSize: 14,
      height: 1.143,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Medium    *************************/
//***************************************************************/
class MediumLabel extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;

  const MediumLabel(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return _LabelText(
      text,
      color: color,
      fontSize: 16,
      height: 1.25,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Large   ***************************/
//***************************************************************/
class LargeLabel extends StatelessWidget {
  final String? text;
  final Color color;
  final TextAlign? textAlign;

  const LargeLabel(
    this.text, {
    super.key,
    this.color = FontManager.COLOR,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return _LabelText(
      text,
      color: color,
      fontSize: 18,
      height: 1.334,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
//***************************************************************/
// ********************     Lite Label     **********************/
//***************************************************************/
//***************************************************************/

//***************************************************************/
// ************************   Tiny    ***************************/
//***************************************************************/
class LiteTinyLabel extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteTinyLabel(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return TinyLabel(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Small   ***************************/
//***************************************************************/
class LiteSmallLabel extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteSmallLabel(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return SmallLabel(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Medium   ***************************/
//***************************************************************/
class LiteMediumLabel extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final Color? color;

  const LiteMediumLabel(
    this.text, {
    Key? key,
    this.textAlign,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediumLabel(
      text,
      color: color ?? FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}

//***************************************************************/
// ************************   Large   ***************************/
//***************************************************************/
class LiteLargeLabel extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;

  const LiteLargeLabel(
    this.text, {
    super.key,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return LargeLabel(
      text,
      color: FontManager.LITE_COLOR,
      textAlign: textAlign,
    );
  }
}
