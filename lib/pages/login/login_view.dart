import 'package:cabelin_app/pages/login/login_controller.dart';
import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/outline_button_widget.dart';
import 'package:cabelin_app/widgets/text_button_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:cabelin_app/widgets/textfield_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    final LoginController loginController = LoginController();

    return LayoutWidget(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            "Oi, \n bom te ver novamente!",
            margin: EdgeInsets.only(bottom: 22),
          ),
          TextfieldWidget(
            label: "Email ou número de celular",
            controller: loginController.emailOrNumberController,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Campo obrigatório";
              }
              return null;
            },
          ),
          TextfieldWidget(
            label: "Senha",
            margin: const EdgeInsets.only(top: 22),
            controller: loginController.passwordController,
            isPasswordField: true,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Campo obrigatório";
              }
              return null;
            },
          ),
          TextButtonWidget(title: "Esqueci minha senha", onTap: () {}),
          Observer(builder: (_) {
            return ButtonWidget(
                title: "Entrar",
                margin: const EdgeInsets.only(top: 16),
                fullWidth: true,
                isLoading: loginController.isLoading,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    loginController
                        .authenticateWithCredentials()
                        .then((value) => context.go("/homePage"));
                  }
                });
          }),
          OutlineButtonWidgt(
              title: "Não tem uma conta? Criar uma agora!",
              margin: const EdgeInsets.only(top: 16),
              fullWidth: true,
              onTap: () {}),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Row(children: <Widget>[
              Expanded(
                  child: Divider(
                endIndent: 10,
              )),
              TextWidget(
                "ou",
                customFontsize: 14,
              ),
              Expanded(
                  child: Divider(
                indent: 10,
              )),
            ]),
          ),
          Align(
            child: GestureDetector(
              onTap: () async {
                try {
                  final GoogleSignInAccount? gUser =
                      await GoogleSignIn().signIn();
                  final GoogleSignInAuthentication gAuth =
                      await gUser!.authentication;

                  final credential = GoogleAuthProvider.credential(
                      accessToken: gAuth.accessToken, idToken: gAuth.idToken);
                  await FirebaseAuth.instance.signInWithCredential(credential);
                  context.go("/homePage");
                } catch (e) {
                  print(e);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: SvgPicture.asset("assets/google.svg"),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
