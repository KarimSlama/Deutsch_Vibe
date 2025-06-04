import 'package:deutsch_vibe/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../deutsch_vibe/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );

        default: return null;
    }
  }
}
