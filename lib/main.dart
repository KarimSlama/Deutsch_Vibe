import 'package:deutsch_vibe/core/routing/app_router.dart';
import 'package:deutsch_vibe/deutsch_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(DeutschApp(appRouter: AppRouter()));
}
