import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/init/app_init.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/navigation_helper/navigation_helper.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppInit.initDeviceSize(context);
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Airbnb',
      navigatorKey: Navigation.navigationKey,
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
          ),
        ),
      ),
    );
  }
}
