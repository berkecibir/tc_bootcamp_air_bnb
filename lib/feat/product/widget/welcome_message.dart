import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.authWelcomeMessage,
      style: AppTheme.appTheme.textTheme.displayLarge,
    );
  }
}
