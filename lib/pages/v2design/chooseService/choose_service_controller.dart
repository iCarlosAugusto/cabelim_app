import 'package:mobx/mobx.dart';
part 'choose_service_controller.g.dart';

class ChooseServiceController = _ChooseServiceControllerBase with _$ChooseServiceController;

abstract class _ChooseServiceControllerBase with Store {

  @observable
  int _currentIndexPage = 0;

  int get currentIndexPage => _currentIndexPage;

  @action
  setCurrentIndexPage(value) => _currentIndexPage = value;

  
  @observable
  bool _showButton = true;
  
  bool get showButton => _showButton;

  @action
  setShowButton(value) => _showButton = value;


}