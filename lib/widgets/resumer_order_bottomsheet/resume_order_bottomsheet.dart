import 'package:cabelin_app/main.dart';
import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/resumer_order_bottomsheet/resume_order_bottomsheet_controller.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ResumeOrderEvent {
  bool showButton;
  String buttonLabel;

  ResumeOrderEvent({
    required this.showButton,
    required this.buttonLabel,
  });
}

class ResumeOrderBottomSheet extends StatelessWidget {
  const ResumeOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScrollAnimation = false;
    PageController pageController = getIt<PageController>();
    DraggableScrollableController draggableController = getIt<DraggableScrollableController>();
    ResumerOrderBottomSheetController resumeController = ResumerOrderBottomSheetController();

    getIt<EventBus>().on<ResumeOrderEvent>().listen((event) {
      resumeController.setShowButton(event.showButton);
    });

    //TODO - ARRUMAR PISCA NA HORA DE DESCER O MODAL

    draggableController.addListener(() {
      if(draggableController.size <= 0.4 && resumeController.showButton && isScrollAnimation == false){
        resumeController.setShowButton(false);
      }

      if(draggableController.size >= 0.4 && !resumeController.showButton && isScrollAnimation == false) {
        resumeController.setShowButton(true);
      }
    });

    return Stack(
      children: [
        DraggableScrollableSheet(
          maxChildSize: 0.9,
          minChildSize: 0.1,
          snap: true,
          snapSizes: const [0.1, 0.5, 0.9],
          controller: draggableController,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(22),
                      topStart: Radius.circular(22))),
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
        ),
        Observer(builder: (_) {
          return Visibility(
            visible: resumeController.showButton,
            child: Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonWidget(
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 22),
                  title: "Escolher horário",
                  fullWidth: true,
                  onTap: () {
                    pageController.animateToPage(
                      1,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.ease
                    );
                    //chooseServiceController.setCurrentIndexPage
                  }
                )
              ),
            ),
          );
        }),
      ],
    );
  }
}
