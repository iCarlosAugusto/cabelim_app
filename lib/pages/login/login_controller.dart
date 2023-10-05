import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  TextEditingController emailOrNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @observable
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  @action
  Future<void> authenticateWithCredentials() async {
    _isLoading = true;
    try {
      await Future.delayed(const Duration(milliseconds: 2000));
    } catch (e) {
      print('Erro');
    } finally {
      _isLoading = false;
    }
  }
}