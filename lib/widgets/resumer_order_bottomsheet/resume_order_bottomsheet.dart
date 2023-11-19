import 'package:cabelin_app/events/resume_order_bottom_sheet_events.dart';
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
    PageController pageController = getIt<PageController>();
  ResumeDraggableController draggableController = getIt<ResumeDraggableController>();
    ResumerOrderBottomSheetController resumeController = ResumerOrderBottomSheetController();

    getIt<EventBus>().on<ResumeOrderEvent>().listen((event) {
      resumeController.setShowButton(event.showButton);
    });

    getIt<EventBus>().on<ResumeOrderSetButtonLabel>().listen((event) { 
      resumeController.setButtonLabel(event.label);
    });

    getIt<EventBus>().on<ResumeOrderSetTime>().listen((event) { 
      resumeController.setTimeSelected(event.time);
    });

    draggableController.addListener(() {
      if(pageController.page == 0) {
        if(draggableController.size <= 0.4 && resumeController.showButton){
          resumeController.setShowButton(false);
        }

        if(draggableController.size >= 0.4 && !resumeController.showButton) {
          resumeController.setShowButton(true);
        }
      }

      if(pageController.page == 1 && resumeController.timeSelected != null){
        if(draggableController.size <= 0.4 && resumeController.showButton){
          resumeController.setShowButton(false);
        }

        if(draggableController.size >= 0.4 && !resumeController.showButton) {
          resumeController.setShowButton(true);
        }
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
                  title: resumeController.buttonLabel,
                  fullWidth: true,
                  onTap: () async {
                    await pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.ease
                    );
                    await draggableController.animateTo(
                      0.1,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.linear
                    );
                    resumeController.setShowButton(false);
                    resumeController.setButtonLabel("Finalizar pedido");
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
