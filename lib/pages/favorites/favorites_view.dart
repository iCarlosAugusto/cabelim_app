import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LayoutWidget(
      child: Column(
        children: [
          TextWidget("Agenda!")
        ],
      )
    );
  }
}