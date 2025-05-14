import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomButton({
    this.text = AppTexts.authCustomButtonText,
    required this.onTap,
    super.key,
  });

  double get _customButtonHeight => 0.09;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: DeviceSize.height! * _customButtonHeight,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: AppBorderRadius.all(
            AppSizes.large,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTheme.appTheme.textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}
