import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChooseServicePage extends StatelessWidget {
  const ChooseServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    DraggableScrollableController resumeSericeScrollController = DraggableScrollableController();
    ScrollController servicesScrollController = ScrollController();

    servicesScrollController.addListener(() {
      if (resumeSericeScrollController.size != 0.1) {
        resumeSericeScrollController.animateTo(
          0.1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: Stack(
        children: [
          GridView.count(
              controller: servicesScrollController,
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: List.generate(10, (index) {
                return Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 219, 214, 214),
                );
              })),
          Expanded(
            child: SizedBox.expand(
              child: DraggableScrollableSheet(
                maxChildSize: 0.9,
                minChildSize: 0.1,
                snap: true,
                snapSizes: const [0.1, 0.5, 0.9],
                controller: resumeSericeScrollController,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    color: Colors.black,
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
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 25,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(title: Text('Item $index'));
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
