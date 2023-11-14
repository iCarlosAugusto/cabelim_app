import 'package:cabelin_app/main.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ResumeOrderBottomSheet extends StatelessWidget {
  const ResumeOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        maxChildSize: 0.9,
        minChildSize: 0.1,
        snap: true,
        snapSizes: const [0.1, 0.5, 0.9],
        controller: getIt<DraggableScrollableController>(),
        builder:
          (BuildContext context, ScrollController scrollController) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(22),
                  topStart: Radius.circular(22)
                )
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 70,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        "Seu pedido",
                        customFontsize: 16,
                        isFontWeight: true,
                        color: Colors.white,
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(bottom: 100),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(title: Text('Item $index'));
                          },
                        ),
                      ],
                  ),
              ),
            );
          },
      
    );
  }
}