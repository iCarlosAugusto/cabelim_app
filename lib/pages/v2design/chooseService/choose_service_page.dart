import 'package:cabelin_app/events/resume_order_bottom_sheet_events.dart';
import 'package:cabelin_app/main.dart';
import 'package:cabelin_app/pages/v2design/calendar/calendar_view.dart';
import 'package:cabelin_app/pages/v2design/chooseService/choose_service_controller.dart';
import 'package:cabelin_app/widgets/appbar_widget.dart';
import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/resumer_order_bottomsheet/resume_order_bottomsheet.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ChooseServicePage extends StatefulWidget {
  const ChooseServicePage({super.key});

  @override
  State<ChooseServicePage> createState() => _ChooseServicePageState();
}

class _ChooseServicePageState extends State<ChooseServicePage> {
  ChooseServiceController chooseServiceController = ChooseServiceController();

  bool isScrollAnimation = false;

  DraggableScrollableController resumeSericeScrollController = getIt<DraggableScrollableController>();
  ScrollController servicesScrollController = ScrollController();
  PageController pageController = getIt<PageController>();

  int currentIndexPage = 0;

  @override
  void initState() {
    super.initState();
    servicesScrollController.addListener(() async {
      if (resumeSericeScrollController.size != 0.1 && isScrollAnimation == false) {
        isScrollAnimation = true;
        await resumeSericeScrollController.animateTo(
          0.1,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn
        );
        getIt<EventBus>().fire(ResumeOrderEvent(
          buttonLabel: "TESTE",
          showButton: false
        ));
        isScrollAnimation = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (pageController.page == 1) {
          getIt<EventBus>().fire(ResumeOrderSetButtonLabel(
            label: "Escolher horário"
          ));

          getIt<EventBus>().fire(ResumeOrderSetTime(
            time: null
          ));
          pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease
          );       
          chooseServiceController.setCurrentIndexPage(0);
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppbarWidget(
          //[ TO DO] -  ARRUMAR, NÃO ESTÁ ATUALIZANDO
          title: currentIndexPage == 0
            ? "Escolha o serviço"
            : "Escolha o horário"
        ),
        body: Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                      controller: servicesScrollController,
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      children: List.generate(10, (index) {
                        return Container(
                          padding: const EdgeInsets.all(16),
                          width: 100,
                          height: 70,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 219, 214, 214),
                              borderRadius:
                                BorderRadiusDirectional.all(Radius.circular(22))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextWidget(
                                "Corte de Cabelo",
                                isFontWeight: true,
                                customFontsize: 16,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextWidget(
                                      "45 min",
                                      customFontsize: 13,
                                      color: Colors.grey,
                                    ),
                                    TextWidget(
                                      "R\$ 25",
                                      isFontWeight: true,
                                      customFontsize: 13,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      })),
                ),
                const CalendarView(),
              ],
            ),
            const ResumeOrderBottomSheet(),
          ],
        ),
      ),
    );
  }
}
