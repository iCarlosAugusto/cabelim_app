import 'package:cabelin_app/widgets/category_wiget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Column(
        children: [
          const TextWidget("Ultimas atualizações"),
          Container(
            width: 353,
            height: 191,
            color: Colors.grey,
          ),
          const TextWidget("Categorias", margin: EdgeInsets.only(top: 24, bottom: 18)),
          const CategoryWidget()
        ],
      )
    );
  }
}