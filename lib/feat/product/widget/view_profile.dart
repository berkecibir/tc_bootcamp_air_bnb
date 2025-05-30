import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.viewProfile,
      style: AppTheme.appTheme.textTheme.labelLarge?.copyWith(
        decoration: TextDecoration.underline,
      ),
    );
  }
}
