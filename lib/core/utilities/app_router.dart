import 'package:finalproject/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final AppRouter router = AppRouter();
  late Widget startScreen;
  Route? onGenerateRoute(RouteSettings routeSettings) {
    startScreen = const SplashScreen();
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
    }
    return null;
  }
}