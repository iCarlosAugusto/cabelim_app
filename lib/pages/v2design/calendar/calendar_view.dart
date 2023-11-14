import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    DateFormat formatter = DateFormat("MM-dd");

    return Scaffold(
      body: Column(
        children: [
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent
            ),
            child: EasyDateTimeLine(
              activeColor: Colors.blue,
              itemBuilder:(context, dayNumber, dayName, monthName, fullDate, isSelected) {
                return Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.black,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      
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
                            visible: formatter.format(fullDate) == formatter.format(currentDate),
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)
                              ),
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
                monthStyle: TextStyle(
                  fontFamily: 'Sora'
                ),
                selectedDateStyle: TextStyle(
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600
                )
              ),
              initialDate: DateTime.now(),
            ),
          ),
        ],
      ),
    );
  }
}
