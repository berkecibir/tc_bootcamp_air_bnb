import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/propety_model.dart';

class PropertyCard extends StatelessWidget {
  final PropetyModel property;

  const PropertyCard({super.key, required this.property});
  double get propertImageHeighhtValue => 0.42;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevicePadding.medium.onlyBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: AppBorderRadius.all(AppSizes.large),
                child: Image.asset(
                  property.imagePath,
                  width: double.infinity,
                  height: DeviceSize.height! * propertImageHeighhtValue,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      property.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: AppColors.white,
                      size: AppSizes.large,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      context
                          .read<ExplorePropertyCubit>()
                          .toggleFavorite(property.id);
                    },
                  ),
                ),
              ),
            ],
          ),
          DeviceSpacing.small.height,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                property.location,
                style: AppTheme.appTheme.textTheme.bodyLarge,
              ),
              DeviceSpacing.xsmall.height,
              Text(
                '${property.price} ${AppTexts.price}',
                style: AppTheme.appTheme.textTheme.labelMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
