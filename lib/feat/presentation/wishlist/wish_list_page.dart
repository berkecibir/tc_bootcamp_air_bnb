import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/favorite_property.dart';

class WishlistPage extends StatelessWidget {
  static const String id = AppTexts.wishlisteId;
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppTexts.wishlistAppBarTitle),
      body: BlocBuilder<ExplorePropertyCubit, ExplorePropertyState>(
        builder: (context, state) {
          final favorites =
              state.properties.where((e) => e.isFavorite).toList();

          if (favorites.isEmpty) {
            return Center(
                child: Text(
              AppTexts.wishlistBodyMessage,
              style: AppTheme.appTheme.textTheme.bodyLarge,
            ));
          }

          return FavoriteProperty(favorites: favorites);
        },
      ),
    );
  }
}
