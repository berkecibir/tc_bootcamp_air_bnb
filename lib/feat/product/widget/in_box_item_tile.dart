import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/inbox/in_box_item_model.dart';

class InBoxItemTile extends StatelessWidget {
  final InBoxItemModel item;
  final bool isSelected;

  const InBoxItemTile({
    super.key,
    required this.item,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: DevicePadding.small.onlyRight,
      child: Column(
        children: [
          AnimatedContainer(
            duration: AppDuration.short,
            padding: DevicePadding.small.onlyHorizontal,
            child: Column(
              children: [
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
            width: isSelected ? AppSizes.xxLarge : AppSizes.zero,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
