import 'package:cabelin_app/pages/home/home_page.dart';
import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Column(
        children: [
          const TextWidget("Login"),
          ButtonWidget(
            color: Colors.purple,
            title: "Login Google",
            onTap: () async {
              try {
                final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
                final GoogleSignInAuthentication gAuth = await gUser!.authentication;

                final credential = GoogleAuthProvider.credential(
                  accessToken: gAuth.accessToken,
                  idToken: gAuth.idToken
                );
                await FirebaseAuth.instance.signInWithCredential(
                  credential
                );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              } catch (e) {
                print(e);
              }
            }
          )
        ],
      )
    );
  }
}