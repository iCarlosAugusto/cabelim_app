import 'package:flutter/material.dart';

enum AvailableFontSizes { small, medium, big }

class TextWidget extends StatelessWidget {
  const TextWidget(this.content,
      {super.key,
      this.isFontWeight = false,
      this.fontSize ,
      this.color,
      this.margin,
      this.textAlign
    });

  final String content;
  final bool isFontWeight;
  final AvailableFontSizes? fontSize;
  final Color? color;
  final EdgeInsets? margin;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    double calculateFontSize() {
      if (fontSize == AvailableFontSizes.small) return 16;

      if (fontSize == AvailableFontSizes.medium) return 24;

      if (fontSize == AvailableFontSizes.big) return 32;

      return 24;
    }

    return Container(
      margin: margin,
      child: Text(
        textAlign: textAlign,
        content,
        style: TextStyle(
            color: color,
            fontWeight: isFontWeight ? FontWeight.w500 : null,
            fontSize: calculateFontSize()),
      ),
    );
  }
}
