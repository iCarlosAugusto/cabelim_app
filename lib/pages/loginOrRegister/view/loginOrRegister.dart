import 'package:cabelin_app/widgets/button_widget.dart';
import 'package:cabelin_app/widgets/layout_widget.dart';
import 'package:cabelin_app/widgets/outline_button_widget.dart';
import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextWidget("Cabelim"),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    //child: Lottie.asset('assets/hair.json')
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const TextWidget(
            "Bem-vindo (ou vinda) ao \n Cabelim",
            textAlign: TextAlign.center,
            margin: EdgeInsets.only(top: 16),
            customWeight: FontWeight.w600,
          ),
          TextWidget(
            "Juste a mais de 100 salões, barbeárias e tattos explados pelo Brasil!",
            customFontsize: 14,
            margin: const EdgeInsets.only(top: 16),
            textAlign: TextAlign.center,
            color: const Color(0XFF322938).withOpacity(.8),
          ),
          ButtonWidget(
            fullWidth: true,
            margin: const EdgeInsets.only(top: 16),
            title: "Entrar na minha conta",
            onTap: () {
              context.pushNamed("/login");
            }
          ),
          OutlineButtonWidgt(
            fullWidth: true,
            margin: const EdgeInsets.only(top: 16),
            title: "Criar uma conta",
            onTap: () {
              
            }
          )
        ],
      ) 
    );
  }
}