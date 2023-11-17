import 'package:mobx/mobx.dart';
part 'resume_order_bottomsheet_controller.g.dart';

class ResumerOrderBottomSheetController = _ResumerOrderBottomSheetControllerBase with _$ResumerOrderBottomSheetController;

abstract class _ResumerOrderBottomSheetControllerBase with Store {
  
  @observable
  bool _showButton = true;
  
  bool get showButton => _showButton;

  @action
  setShowButton(value) => _showButton = value;


  @observable
  String _buttonLabel = "Escolha o horário";

  String get buttonLabel => _buttonLabel;

  @action
  setButtonLabel(value) => _buttonLabel = value;

  @observable
  String? _timeSelected;

  String? get timeSelected => _timeSelected; 

  @action
  setTimeSelected(String? value) => _timeSelected = value;

}