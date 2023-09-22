import 'package:cabelin_app/pages/home/home_page.dart';
import 'package:cabelin_app/pages/login/login_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/homePage',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
  ],
);