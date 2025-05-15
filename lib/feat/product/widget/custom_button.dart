import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final Widget child;
  const CustomButton({
    required this.onTap,
    required this.child,
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
          child: child,
        ),
      ),
    );
  }
}
