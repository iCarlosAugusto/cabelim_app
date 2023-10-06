import 'package:cabelin_app/pages/profile/profil_cotnroller.dart';
import 'package:cabelin_app/widgets/appbar_widget.dart';
import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:cabelin_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = ProfileController();
    const photoUrl ="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.QjynegEfQVPq5kIEuX9fWQHaFj%26pid%3DApi&f=1&ipt=5fe1fb9ff9e76aa4679ae19df43c54f7ebb537f83761501260eb0b033d611ad4&ipo=images";

    return LayoutWidget(
        appBar: AppbarWidget(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.purple, width: 2)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      photoUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(22),
                            height: 180,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)
                              )
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: TextWidget(
                                    "Escolha a fonte de imagem: ",
                                    customFontsize: 16,
                                    customWeight: FontWeight.w400,
                                    margin: EdgeInsets.only(bottom: 22),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () => controller.pickImage(ImageSource.camera),
                                      child: Container(
                                        padding: const EdgeInsets.all(32),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.circular(
                                            20
                                          )
                                        ),
                                        child: const Icon(Icons.camera_alt_outlined),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => controller.pickImage(ImageSource.gallery),
                                      child: Container(
                                        padding: const EdgeInsets.all(32),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.circular(
                                            20
                                          )
                                        ),
                                        child: const Icon(Icons.photo_album_rounded),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        padding: const EdgeInsets.all(4),
                        child: const Icon(Icons.edit_outlined,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
            TextfieldWidget(
              margin: const EdgeInsets.only(top: 16),
              label: 'Nome',
              initialValue: 'Carlos Augusto',
            ),
            TextfieldWidget(
              margin: const EdgeInsets.symmetric(vertical: 16),
              label: 'Telefone para contato',
              initialValue: "(62) 98239-9800",
            ),
            TextfieldWidget(
              margin: const EdgeInsets.only(bottom: 16),
              label: 'Email',
              initialValue: "carlosaugusto@gmail.com",
            ),
            ButtonWidget(title: "Salvar", fullWidth: true, onTap: () {})
          ],
        )
      );
  }
}
