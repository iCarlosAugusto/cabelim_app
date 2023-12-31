import 'package:cabelin_app/pages/home/home_page.dart';
import 'package:cabelin_app/pages/login/login_view.dart';
import 'package:cabelin_app/routes/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: const Color(0XFF14CC60),
          primaryColorLight:const Color(0XFF14CC60),
          primaryColorDark: const Color(0XFF14CC60),
          useMaterial3: true,
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(
                width: 2,
                color: Color(0XFF14CC60),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.only(top: 16, bottom: 16)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          )),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.only(top: 16, bottom: 16, left: 18, right: 18)
              ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                }
                return const Color(0XFF14CC60);
              },
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ) 
          ),
          inputDecorationTheme: InputDecorationTheme(
            suffixIconColor: const Color(0xFF272727).withOpacity(0.5),
            iconColor: const Color(0xFF272727).withOpacity(0.5),
            prefixIconColor: const Color(0xFF272727).withOpacity(0.5),
            contentPadding: const EdgeInsets.only(left: 16, top: 23, right: 16, bottom: 23),
            hintStyle: TextStyle(color: const Color(0xFF272727).withOpacity(0.5)),
            labelStyle: TextStyle(color: const Color(0xFF272727).withOpacity(0.5)),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: const Color(0xFF272727).withOpacity(0.5)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: const Color(0xFF272727).withOpacity(0.5)),
            ),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: const Color(0xFF272727).withOpacity(0.5)),
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            enableFeedback: false,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            elevation: 0,
            selectedItemColor: Color(0XFF322938),
            unselectedItemColor: Color(0XFF322938),
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13
            )
          ),
          primarySwatch: Colors.blue,
        ),
      routerConfig: router
    );
  }
}
