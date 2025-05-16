import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/asset/app_vectors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/auth/auth_cubit.dart';

class CustomPhoneTextField extends StatelessWidget {
  const CustomPhoneTextField({
    super.key,
  });

  double get customPhoneTextFieldHeightvalue => 0.15;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceSize.height! * customPhoneTextFieldHeightvalue,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.grey,
          width: 1,
        ),
        borderRadius: AppBorderRadius.all(AppSizes.large),
      ),
      child: Padding(
        padding: DevicePadding.medium.all,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  AppTexts.countryCode,
                  style: AppTheme.appTheme.textTheme.bodyLarge,
                ),
                const Spacer(),
                SvgPicture.asset(
                  AppVectors.arrowDownIcon,
                ),
              ],
            ),
            DeviceSpacing.small.height,
            const Divider(),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  context.read<AuthCubit>().onPhoneChanged(value);
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppTexts.phoneNumberHintText,
                  hintStyle: AppTheme.appTheme.textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
