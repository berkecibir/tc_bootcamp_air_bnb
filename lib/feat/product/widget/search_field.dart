import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DevicePadding.medium.allSymtetric,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppBorderRadius.all(AppSizes.xxLarge),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: AppSizes.medium,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search, size: AppSizes.xLarge),
          DeviceSpacing.small.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTexts.searchBarTitle1,
                  style: AppTheme.appTheme.textTheme.bodyMedium,
                ),
                SizedBox(
                  height: AppSizes.large,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: AppTexts.searchBarhintText,
                      border: InputBorder.none,
                    ),
                    style: AppTheme.appTheme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            padding: DevicePadding.small.all,
            child: const Icon(Icons.tune, size: AppSizes.large),
          ),
        ],
      ),
    );
  }
}
