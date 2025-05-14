import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class AuthPageInitialMessage extends StatelessWidget {
  const AuthPageInitialMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.authInitialMessage,
      textAlign: TextAlign.start,
      style: AppTheme.appTheme.textTheme.bodyMedium,
    );
  }
}
