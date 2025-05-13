import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/asset/app_vectors.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/splash/mixin/splash-mixin.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SplashMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.splashIcon,
        ),
      ),
    );
  }
}
