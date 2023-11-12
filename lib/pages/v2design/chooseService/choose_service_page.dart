import 'package:cabelin_app/widgets/appbar_widget.dart';
import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/list_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';

class ChooseServicePage extends StatefulWidget {
  @override
  State<ChooseServicePage> createState() => _ChooseServicePageState();
}

class _ChooseServicePageState extends State<ChooseServicePage>
    with SingleTickerProviderStateMixin {
  SnappingSheetController snappingSheetController = SnappingSheetController();
  ScrollController servicesGridController = ScrollController();

  @override
  Widget build(BuildContext context) {

    servicesGridController.addListener(() {
      print(snappingSheetController.currentSnappingPosition.grabbingContentOffset);
      snappingSheetController.snapToPosition(
        const SnappingPosition.factor(
          positionFactor: 0.08,
          snappingDuration: Duration(milliseconds: 500)
        )
      );
    });


    return Scaffold(
      appBar: AppbarWidget(title: "Escolha o serviço"),
      body: SnappingSheet(
        controller: snappingSheetController,
        lockOverflowDrag: true,
        snappingPositions: const [
          SnappingPosition.factor(
            positionFactor: 0.08,
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          SnappingPosition.factor(
            positionFactor: 0.5,
          ),
          SnappingPosition.factor(
            grabbingContentOffset: GrabbingContentOffset.bottom,
            positionFactor: 0.9,
          ),
        ],
        sheetBelow: SnappingSheetContent(
          draggable: (details) => true,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22)
              )
            ),
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
                    isFontWeight: true,
                    customFontsize: 16,
                    margin: EdgeInsets.only(left: 16, top: 6, bottom: 6),
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  title: const TextWidget(
                    "Title",
                    color: Colors.white,
                    customFontsize: 16,
                  ),
                  subtitle: const TextWidget(
                    "Subtitle",
                    customFontsize: 16,
                  ),
                  trailing: const TextWidget(
                    "R\$ 50",
                    isFontWeight: true,
                    customFontsize: 16,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: ListWidget(
                    itemBuilder: (_, __) =>  ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                      title: const TextWidget(
                        "Title",
                        color: Colors.white,
                        customFontsize: 16,
                      ),
                      subtitle: const TextWidget(
                        "Subtitle",
                        customFontsize: 16,
                      ),
                      trailing: const TextWidget(
                        "R\$ 50",
                        isFontWeight: true,
                        customFontsize: 16,
                        color: Colors.white,
                      ),
                    ),
                    itemCount: 3
                  ),
                ),
                ButtonWidget(title: "Escolher horário", onTap: () {})
              ],
            ),
          ),
        ),
        child: SingleChildScrollView(
          controller: servicesGridController,
          child: Column(
            children: [
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(10, (index) {
                  return GestureDetector(
                    onTap: () {
                      snappingSheetController.snapToPosition(
                        const SnappingPosition.factor(
                          positionFactor: 0.5,
                          snappingDuration: Duration(milliseconds: 500)
                        )
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 219, 214, 214),
                    ),
                  );
                })
              ),
          ]),
        ),
      ),
    );
  }
}