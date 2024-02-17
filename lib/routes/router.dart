import 'package:flutter/material.dart';
import 'package:muynaak/features/home/screens/home_screen.dart';
import 'package:muynaak/features/login/screen/login_screen.dart';

class AppRouter {
  static bool isLoggedIn = true;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return isLoggedIn
            ? MaterialPageRoute(builder: (_) => const HomeScreen())
            : MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Screen not found'),
            ),
          ),
        );
    }
  }
}
