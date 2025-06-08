import 'package:deutsch_vibe/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../deutsch_vibe/login/login_screen.dart';
import '../../deutsch_vibe/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );

        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );

        default: return null;
    }
  }
}
