import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_item_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_item_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_fab.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/explore_item_tile.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/propert_card.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/search_field.dart';

class ExplorePage extends StatefulWidget {
  static const String id = AppTexts.exploreId;
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const CustomFAB(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DeviceSpacing.xlarge.height,
            Padding(
              padding: DevicePadding.small.all,
              child: const SearchField(),
            ),
            BlocBuilder<ExploreItemCubit, ExploreItemState>(
              builder: (context, state) {
                final items = state.items;
                final selectedIndex = state.selectedIndex;

                return SizedBox(
                  height: DeviceSize.height! * 0.12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    padding: const EdgeInsets.only(left: 10, right: 50),
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final isSelected = index == selectedIndex;

                      return GestureDetector(
                          onTap: () {
                            context.read<ExploreItemCubit>().selectIndex(index);
                          },
                          child: ExploreItemTile(
                              item: item, isSelected: isSelected));
                    },
                  ),
                );
              },
            ),
            Expanded(
              child: BlocBuilder<ExplorePropertyCubit, ExplorePropertyState>(
                builder: (context, state) {
                  final properties = state.properties;

                  return ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemCount: properties.length,
                    itemBuilder: (context, index) {
                      final property = properties[index];
                      return PropertyCard(property: property);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
