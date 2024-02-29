import 'package:finalproject/core/utilities/screens.dart' as screens;
import 'package:finalproject/core/widgets/congrats.dart';
import 'package:finalproject/core/widgets/success.dart';
import 'package:finalproject/features/on_boarding/presentation/main_on_boarding_screen.dart';
import 'package:finalproject/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../features/login/presentation/login_screen.dart';
import '../../features/otb/presentation/account_verfication_code.dart';
import '../../features/otb/presentation/account_verfication_method.dart';
import '../../features/otb/presentation/reset_pass_code.dart';
import '../../features/otb/presentation/reset_pass_method.dart';
import '../../features/reset_new_password/presentation/reset_new_password_screen.dart';
import '../../features/sign_up/presentation/profile_info.dart';
import '../../features/sign_up/presentation/signup_screen.dart';

class AppRouter {
  static final AppRouter router = AppRouter();
  late Widget startScreen;
  Route? onGenerateRoute(RouteSettings routeSettings) {
    final Map<String, dynamic>? args =
        routeSettings.arguments as Map<String, dynamic>?;
    startScreen = const SplashScreen();
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case screens.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const MainOnBoardingScreen());
      case screens.verCodeScreen:
        return MaterialPageRoute(
            builder: (_) => AccountVerficationCode(
                verficationMethod: args!['verficationMethod']));
      case screens.verPassScreen:
        return MaterialPageRoute(
            builder: (_) => ResetPasswordCode(
                verficationMethod: args!['verficationMethod']));
      case screens.verMethodScreen:
        return MaterialPageRoute(
            builder: (_) => const AccountVerficationMethod());
      case screens.passMethodScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordMethod());
      case screens.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case screens.registerScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case screens.newPassScreen:
        return MaterialPageRoute(
            builder: (_) => const ResetNewPasswordScreen());
      case screens.profileInfoScreen:
        return MaterialPageRoute(builder: (_) => const ProfileInfo());
      case screens.successScreen:
        return MaterialPageRoute(builder: (_) => const SuccessRegistration());
      case screens.congratsScreen:
        return MaterialPageRoute(builder: (_) => const CongratsScreen());
    }

    return null;
  }
}
