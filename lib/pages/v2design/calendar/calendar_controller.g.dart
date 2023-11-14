// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalendarController on _CalendarControllerBase, Store {
  late final _$currentSelectedDateAtom = Atom(
      name: '_CalendarControllerBase.currentSelectedDate', context: context);

  @override
  DateTime get currentSelectedDate {
    _$currentSelectedDateAtom.reportRead();
    return super.currentSelectedDate;
  }

  @override
  set currentSelectedDate(DateTime value) {
    _$currentSelectedDateAtom.reportWrite(value, super.currentSelectedDate, () {
      super.currentSelectedDate = value;
    });
  }

  late final _$_CalendarControllerBaseActionController =
      ActionController(name: '_CalendarControllerBase', context: context);

  @override
  void changeDate(DateTime newDate) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.changeDate');
    try {
      return super.changeDate(newDate);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentSelectedDate: ${currentSelectedDate}
    ''';
  }
}
