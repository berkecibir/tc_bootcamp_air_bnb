import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/propety_model.dart';

class FavoriteProperty extends StatelessWidget {
  const FavoriteProperty({
    super.key,
    required this.favorites,
  });

  final List<PropetyModel> favorites;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: DevicePadding.medium.all,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final property = favorites[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      property.imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.favorite,
                            color: Colors.red, size: 18),
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
            ),
            DeviceSpacing.xsmall.height,
            Text(
              property.location,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('${property.price} ₺'),
          ],
        );
      },
    );
  }
}
