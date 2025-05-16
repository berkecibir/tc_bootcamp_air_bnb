import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/propety_model.dart';

class PropertyCard extends StatelessWidget {
  final PropetyModel property;

  const PropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  property.imagePath,
                  width: double.infinity,
                  height: DeviceSize.height! * 0.42,
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
                      size: 20,
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
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DeviceSpacing.xsmall.height,
              Text(
                '${property.price} ₺ / gece',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
