import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppbarWidget({
    super.key,
    this.title = '',
    this.isCenterTitle,
    this.elevation,
    this.backgroundColor,
    this.showProfile = false,
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
  Widget? actions;
  Function()? onBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(
        color: backgroundColor != null ? Colors.white : Colors.black
      ),
      title: Image.asset(
        "assets/logo.png",
        fit: BoxFit.contain,
        height: 33,
        width: 76,
      ),
      actions: [
        const Icon(Icons.notifications_outlined),
        Container(
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
              FirebaseAuth.instance.currentUser!.photoURL!,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
