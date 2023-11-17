// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_order_bottomsheet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ResumerOrderBottomSheetController
    on _ResumerOrderBottomSheetControllerBase, Store {
  late final _$_showButtonAtom = Atom(
      name: '_ResumerOrderBottomSheetControllerBase._showButton',
      context: context);

  @override
  bool get _showButton {
    _$_showButtonAtom.reportRead();
    return super._showButton;
  }

  @override
  set _showButton(bool value) {
    _$_showButtonAtom.reportWrite(value, super._showButton, () {
      super._showButton = value;
    });
  }

  late final _$_buttonLabelAtom = Atom(
      name: '_ResumerOrderBottomSheetControllerBase._buttonLabel',
      context: context);

  @override
  String get _buttonLabel {
    _$_buttonLabelAtom.reportRead();
    return super._buttonLabel;
  }

  @override
  set _buttonLabel(String value) {
    _$_buttonLabelAtom.reportWrite(value, super._buttonLabel, () {
      super._buttonLabel = value;
    });
  }

  late final _$_timeSelectedAtom = Atom(
      name: '_ResumerOrderBottomSheetControllerBase._timeSelected',
      context: context);

  @override
  String? get _timeSelected {
    _$_timeSelectedAtom.reportRead();
    return super._timeSelected;
  }

  @override
  set _timeSelected(String? value) {
    _$_timeSelectedAtom.reportWrite(value, super._timeSelected, () {
      super._timeSelected = value;
    });
  }

  late final _$_ResumerOrderBottomSheetControllerBaseActionController =
      ActionController(
          name: '_ResumerOrderBottomSheetControllerBase', context: context);

  @override
  dynamic setShowButton(dynamic value) {
    final _$actionInfo =
        _$_ResumerOrderBottomSheetControllerBaseActionController.startAction(
            name: '_ResumerOrderBottomSheetControllerBase.setShowButton');
    try {
      return super.setShowButton(value);
    } finally {
      _$_ResumerOrderBottomSheetControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setButtonLabel(dynamic value) {
    final _$actionInfo =
        _$_ResumerOrderBottomSheetControllerBaseActionController.startAction(
            name: '_ResumerOrderBottomSheetControllerBase.setButtonLabel');
    try {
      return super.setButtonLabel(value);
    } finally {
      _$_ResumerOrderBottomSheetControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTimeSelected(String? value) {
    final _$actionInfo =
        _$_ResumerOrderBottomSheetControllerBaseActionController.startAction(
            name: '_ResumerOrderBottomSheetControllerBase.setTimeSelected');
    try {
      return super.setTimeSelected(value);
    } finally {
      _$_ResumerOrderBottomSheetControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
