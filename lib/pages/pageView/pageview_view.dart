import 'package:cabelin_app/pages/agenda/agenda_view.dart';
import 'package:cabelin_app/pages/favorites/favorites_view.dart';
import 'package:cabelin_app/pages/home/home_page.dart';
import 'package:cabelin_app/pages/pageView/pageview_controller.dart';
import 'package:cabelin_app/pages/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class PageViewApp extends StatelessWidget {
  const PageViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    PageViewController controller = PageViewController();

    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (int index) {
          controller.handleChangePage(index);
        },
        children: const [
          HomePage(),
          SearchView(),
          AgendaView(),
          FavoritesView()
        ],
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: (int index) {
            controller.handleChangePageByNavigation(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home.svg"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/search.svg"),
              label: "Buscar"
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/calendar.svg"),
              label: "Agenda"
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/favorite.svg"),
              label: "Favoritos"
            )
            ]);
      }),
    );
  }
}