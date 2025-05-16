import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/auth/auth_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/explore/explore_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/splash/splash_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/wishlist/wish_list_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    // Splash
    SplashPage.id: (context) => const SplashPage(),
    // Auth
    AuthPage.id: (context) => const AuthPage(),
    // Explore
    ExplorePage.id: (context) => const ExplorePage(),
    WishlistPage.id: (context) => const WishlistPage(),
  };
}
