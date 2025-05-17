import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/auth/auth_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/explore/explore_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/inbox/in_box_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/main/main_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/profile/profile_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/splash/splash_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/trips/trips_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/wishlist/wish_list_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    // Splash
    SplashPage.id: (context) => const SplashPage(),
    // Auth
    AuthPage.id: (context) => const AuthPage(),
    // Explore
    ExplorePage.id: (context) => const ExplorePage(),
    // wishlist
    WishlistPage.id: (context) => const WishlistPage(),
    // profile
    ProfilePage.id: (context) => const ProfilePage(),
    // main
    MainPage.id: (context) => const MainPage(),
    // inbox
    InBoxPage.id: (context) => const InBoxPage(),
    // trips
    TripsPage.id: (context) => const TripsPage(),
  };
}
