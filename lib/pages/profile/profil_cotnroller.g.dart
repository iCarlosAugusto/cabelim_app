// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profil_cotnroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileController on _ProfileControllerBase, Store {
  late final _$currentImageSelectedAtom = Atom(
      name: '_ProfileControllerBase.currentImageSelected', context: context);

  @override
  File? get currentImageSelected {
    _$currentImageSelectedAtom.reportRead();
    return super.currentImageSelected;
  }

  @override
  set currentImageSelected(File? value) {
    _$currentImageSelectedAtom.reportWrite(value, super.currentImageSelected,
        () {
      super.currentImageSelected = value;
    });
  }

  late final _$pickImageAsyncAction =
      AsyncAction('_ProfileControllerBase.pickImage', context: context);

  @override
  Future<void> pickImage(ImageSource imageSource) {
    return _$pickImageAsyncAction.run(() => super.pickImage(imageSource));
  }

  @override
  String toString() {
    return '''
currentImageSelected: ${currentImageSelected}
    ''';
  }
}
