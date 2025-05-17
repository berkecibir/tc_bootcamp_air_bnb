import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_border.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/trips/reservation_model.dart';

class ReservationCard extends StatelessWidget {
  final ReservationModel reservation;

  const ReservationCard({super.key, required this.reservation});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("MMM dd", "en_US");
    final yearFormat = DateFormat("yyyy");

    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
          borderRadius: AppBorderRadius.all(AppSizes.small)),
      elevation: 2,
      margin: DevicePadding.medium.all,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: DevicePadding.xsmall.onlyHorizontal,
            child: Text(
              AppTexts.upcomingReservation,
              style: AppTheme.appTheme.textTheme.displayMedium?.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          DeviceSpacing.large.height,
          Stack(
            children: [
              ClipRRect(
                borderRadius: AppBorderRadius.vertical(AppSizes.xSmall),
                child: Image.asset(
                  reservation.imagePath,
                  height: DeviceSize.height! * 0.20,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: AppSizes.small,
                left: AppSizes.small,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.small, vertical: AppSizes.xSmall),
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius: AppBorder.small,
                  ),
                  child: Text(
                    reservation.status,
                    style: AppTheme.appTheme.textTheme.bodySmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: DevicePadding.medium.all,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reservation.title,
                  style: AppTheme.appTheme.textTheme.labelLarge?.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(reservation.description,
                    style: const TextStyle(color: AppColors.darkGrey)),
                DeviceSpacing.small.height,
                Row(
                  children: [
                    Text(
                      "${dateFormat.format(reservation.startDate)} - ${dateFormat.format(reservation.endDate)}",
                      style: AppTheme.appTheme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    DeviceSpacing.medium.height,
                    Text(
                      yearFormat.format(reservation.startDate),
                      style: AppTheme.appTheme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ],
                ),
                DeviceSpacing.xsmall.height,
                Text(
                  "${reservation.location}\n${reservation.country}",
                  style: AppTheme.appTheme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
