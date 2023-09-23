import 'package:cabelin_app/pages/home/home_page.dart';
import 'package:cabelin_app/pages/login/login_view.dart';
import 'package:cabelin_app/pages/loginOrRegister/view/loginOrRegister.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [

    GoRoute(
      path: "/",
      builder: (context, state) => const LoginOrRegister(),
    ),
    GoRoute(
      path: '/homePage',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
  ],
);