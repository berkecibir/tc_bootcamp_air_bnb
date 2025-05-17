import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/inbox/in_box_item_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/inbox/in_box_item_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/in_box_item_tile.dart';

class InBoxPage extends StatelessWidget {
  static const String id = AppTexts.inBoxId;

  const InBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppTexts.inBoxAppBarTitle),
      body: BlocBuilder<InBoxItemCubit, InBoxItemState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  height: DeviceSize.height! * 0.12,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __) => DeviceSpacing.small.width,
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      final item = state.items[index];
                      final isSelected = index == state.selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          context.read<InBoxItemCubit>().selectIndex(index);
                        },
                        child: InBoxItemTile(
                          item: item,
                          isSelected: isSelected,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
