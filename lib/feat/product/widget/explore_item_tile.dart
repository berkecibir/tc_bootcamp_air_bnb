import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/explore_item_model.dart';

class ExploreItemTile extends StatelessWidget {
  final ExploreItemModel item;
  final bool isSelected;

  const ExploreItemTile({
    super.key,
    required this.item,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: DevicePadding.small.onlyRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: AppDuration.short,
            padding: DevicePadding.small.onlyHorizontal,
            child: Column(
              children: [
                Icon(
                  item.icon,
                  color: isSelected ? AppColors.black : AppColors.grey,
                  size: AppSizes.xxLarge,
                ),
                DeviceSpacing.small.height,
                Text(
                  item.title,
                  style: TextStyle(
                    color: isSelected ? AppColors.black : AppColors.grey,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          DeviceSpacing.small.height,
          AnimatedContainer(
            duration: AppDuration.short,
            height: 2,
            width: isSelected ? AppSizes.large : AppSizes.zero,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
