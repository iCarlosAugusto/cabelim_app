import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppbarWidget({
    super.key,
    this.title = '',
    this.isCenterTitle,
    this.elevation,
    this.backgroundColor,
    this.showProfile = false,
    this.showNotifications = false,
    this.showLogo = false,
    this.actions,
    this.onBack,
  });

  final String title;
  final bool? isCenterTitle;
  final double? elevation;
  final Color? backgroundColor;
  bool showProfile = false;
  bool showLogo = false;
  bool showNotifications = false;
  Widget? actions;
  Function()? onBack;

  @override
  Widget build(BuildContext context) {
    const photoUrl = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.QjynegEfQVPq5kIEuX9fWQHaFj%26pid%3DApi&f=1&ipt=5fe1fb9ff9e76aa4679ae19df43c54f7ebb537f83761501260eb0b033d611ad4&ipo=images";

    return AppBar(
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(
        color: backgroundColor != null ? Colors.white : Colors.black
      ),
      title: TextWidget(title),
      actions: [
        Visibility(
          visible: showNotifications,
          child: SvgPicture.asset("assets/bell.svg")
        ),
        Visibility(
          visible: showProfile,
          child: GestureDetector(
            onTap: () {
              context.push("/profile");
            },
            child: Container(
            width: 24,
            height: 24,
            margin: const EdgeInsets.only(right: 22, left: 24),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(100)
              ),
              border: Border.all(
                color: Colors.purple,
                width: 2
              )
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                photoUrl,
                fit: BoxFit.cover,
                //FirebaseAuth.instance.currentUser!.photoURL!,
              ),
            ),
                  ),
          )
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
