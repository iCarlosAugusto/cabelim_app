// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_service_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChooseServiceController on _ChooseServiceControllerBase, Store {
  late final _$_currentIndexPageAtom = Atom(
      name: '_ChooseServiceControllerBase._currentIndexPage', context: context);

  @override
  int get _currentIndexPage {
    _$_currentIndexPageAtom.reportRead();
    return super._currentIndexPage;
  }

  @override
  set _currentIndexPage(int value) {
    _$_currentIndexPageAtom.reportWrite(value, super._currentIndexPage, () {
      super._currentIndexPage = value;
    });
  }

  late final _$_showButtonAtom =
      Atom(name: '_ChooseServiceControllerBase._showButton', context: context);

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

  late final _$_ChooseServiceControllerBaseActionController =
      ActionController(name: '_ChooseServiceControllerBase', context: context);

  @override
  dynamic setCurrentIndexPage(dynamic value) {
    final _$actionInfo = _$_ChooseServiceControllerBaseActionController
        .startAction(name: '_ChooseServiceControllerBase.setCurrentIndexPage');
    try {
      return super.setCurrentIndexPage(value);
    } finally {
      _$_ChooseServiceControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setShowButton(dynamic value) {
    final _$actionInfo = _$_ChooseServiceControllerBaseActionController
        .startAction(name: '_ChooseServiceControllerBase.setShowButton');
    try {
      return super.setShowButton(value);
    } finally {
      _$_ChooseServiceControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
