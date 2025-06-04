import 'package:deutsch_vibe/core/constants/vibe_string.dart';
import 'package:deutsch_vibe/core/routing/app_router.dart';
import 'package:deutsch_vibe/core/routing/routes.dart';
import 'package:deutsch_vibe/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeutschApp extends StatelessWidget {
  final AppRouter? appRouter;
  const DeutschApp({super.key, this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: VibeString.appTitle,
        theme: VibeTheme.lightTheme,
        darkTheme: VibeTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter?.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
