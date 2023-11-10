import 'package:cabelin_app/widgets/appbar_widget.dart';
import 'package:cabelin_app/widgets/chip_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/list_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      appBar: AppbarWidget(

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget("Agende seu horário!"),
          ChipsChoice<int>.single(
            value: 1,
            spinnerColor: Colors.red,
            onChanged: (val){},
            choiceItems: C2Choice.listFrom<int, String>(
              source: ["Hoje", "Amanha", "Essa semana", "Próxima semana"],
              value: (i, v) => i,
              label: (i, v) => v,
            ),
          ),
          const TextWidget(
            "Quinta, 03 de agosto",
            customWeight: FontWeight.w700,
            margin: EdgeInsets.only(bottom: 16),
          ),
          ListWidget(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, __) => const ListTile(
              title: TextWidget("Marcelo"),
              leading: CircleAvatar(),
              trailing: TextWidget(
                "\$20",
                customWeight: FontWeight.w700
              ),
            ),
            itemCount: 20
          )
        ],
      )
    );
  }
}