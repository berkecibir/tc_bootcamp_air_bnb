import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/splash/splash_page.dart';

mixin SplashMixin on State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirectToLogin();
  }

  Duration splashDurationValue() =>
      const Duration(seconds: AppDuration.twoSecond);

  Future<void> _redirectToLogin() async {
    await Future.delayed(splashDurationValue());
    //Navigation.pushReplace(page: const AuthPage());
  }
}
