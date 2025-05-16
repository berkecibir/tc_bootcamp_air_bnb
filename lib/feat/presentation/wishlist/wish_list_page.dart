import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';

class WishlistPage extends StatelessWidget {
  static const String id = AppTexts.wishlisteId;
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Wishlist"),
      body: BlocBuilder<ExplorePropertyCubit, ExplorePropertyState>(
        builder: (context, state) {
          final favorites =
              state.properties.where((e) => e.isFavorite).toList();

          if (favorites.isEmpty) {
            return const Center(child: Text("No favorites yet"));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(12),
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
                  const SizedBox(height: 6),
                  Text(
                    property.location,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${property.price} ₺'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
