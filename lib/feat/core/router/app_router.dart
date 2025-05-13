import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/splash/splash_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    // Splash
    SplashPage.id: (context) => const SplashPage(),
  };
}
