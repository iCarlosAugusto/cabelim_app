import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
part 'profil_cotnroller.g.dart';


class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  
  final ImagePicker _imagePicker = ImagePicker();

  @observable
  File? currentImageSelected;

  @action
  Future<void> pickImage(ImageSource imageSource) async {
    XFile? image = await _imagePicker.pickImage(source: imageSource);
    if(image != null) {
      currentImageSelected = File(image.path);
    }
  }
}