import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 33, 27, 37),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
      child: Column(
        children: [
          Container(color: Colors.grey, width: 50, height: 50),
          const TextWidget("Salões", margin: EdgeInsets.only(top: 6))
        ],
      )
    );
  }
}