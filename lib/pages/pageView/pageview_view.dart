import 'package:cabelin_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewApp extends StatelessWidget {
  const PageViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          HomePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items:  [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/home.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset("assets/search.svg"),
            label: "Buscar"
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset("assets/calendar.svg"),
            label: "Agenda"
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset("assets/favorite.svg"),
            label: "Favoritos"
          )
        ]
      ),
    );
  }
}