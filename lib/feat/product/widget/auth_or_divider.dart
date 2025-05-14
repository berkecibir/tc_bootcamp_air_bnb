import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';

class AuthOrDivider extends StatelessWidget {
  const AuthOrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.grey,
            thickness: 1.5,
          ),
        ),
        DeviceSpacing.medium.width,
        Text(
          AppTexts.authOrDividerText,
          style: AppTheme.appTheme.textTheme.bodyLarge,
        ),
        DeviceSpacing.medium.width,
        const Expanded(
          child: Divider(
            color: AppColors.grey,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
