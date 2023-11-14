import 'package:mobx/mobx.dart';
part 'calendar_controller.g.dart';

class CalendarController = _CalendarControllerBase with _$CalendarController;

abstract class _CalendarControllerBase with Store {


  @observable
  int? currentTimeSelected;

  @action
  void setCurrentTimeSelected(int newTime) {
    currentTimeSelected = newTime;
  } 

  @observable
  DateTime currentSelectedDate = DateTime.now();

  @action
  void changeDate(DateTime newDate) {
    currentSelectedDate = newDate;
  }
}