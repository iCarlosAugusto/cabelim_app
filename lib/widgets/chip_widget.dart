import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: const BoxDecoration(
        color: Color(0XFFC5FCFD),
        borderRadius: BorderRadius.all(Radius.circular(32))
      ),
      child: const Align(
        child: TextWidget(
          "20% OFF",
          color: Color(0XFF0E8587),
          customFontsize: 9,
        ),
      ),
    );
  }
}
