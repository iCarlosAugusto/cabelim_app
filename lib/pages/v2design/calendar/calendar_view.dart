import 'package:cabelin_app/main.dart';
import 'package:cabelin_app/pages/v2design/calendar/calendar_controller.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    initializeDateFormatting();
    DateFormat formatter = DateFormat("d 'de' MMMM", 'pt_BR');
    DraggableScrollableController resumeSericeScrollController = getIt<DraggableScrollableController>();
    CalendarController calendarController = CalendarController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Theme(
              data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent),
              child: EasyDateTimeLine(
                locale: "pt_Br",
                activeColor: Colors.blue,
                onDateChange: (dateSelected) {
                  calendarController.changeDate(dateSelected);
                },
                itemBuilder: (context, dayNumber, dayName, monthName, fullDate,
                    isSelected) {
                  return Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: isSelected ? Colors.blue : Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            TextWidget(
                              dayNumber.toString(),
                              color: isSelected ? Colors.black : Colors.white,
                              isFontWeight: true,
                              customFontsize: 16,
                            ),
                            TextWidget(
                              dayName,
                              isFontWeight: true,
                              customFontsize: 13,
                              color: isSelected ? Colors.black : Colors.white,
                            ),
                            Visibility(
                              visible: formatter.format(fullDate) ==
                                  formatter.format(todayDate),
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                headerProps: const EasyHeaderProps(
                    monthPickerType: MonthPickerType.switcher,
                    showSelectedDate: true,
                    monthStyle: TextStyle(fontFamily: 'Sora'),
                    selectedDateStyle: TextStyle(
                        fontFamily: 'Sora', fontWeight: FontWeight.w600)),
                initialDate: DateTime.now(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Observer(builder: (_) {
                    return TextWidget(
                      formatter.format(calendarController.currentSelectedDate),
                      isFontWeight: true,
                    );
                  }),
                  const TextWidget(
                    "9 horários disponíveis",
                    customFontsize: 16,
                    color: Colors.grey,
                    margin: EdgeInsets.only(bottom: 16),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: 4 / 2),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          getIt<DraggableScrollableController>().animateTo(0.5,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wb_sunny_outlined,
                                size: 16,
                              ),
                              TextWidget(
                                "13:00",
                                margin: EdgeInsets.only(left: 3),
                                customFontsize: 13,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
