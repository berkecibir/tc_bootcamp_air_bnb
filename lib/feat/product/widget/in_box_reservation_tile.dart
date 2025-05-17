import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/asset/app_images.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class InBoxReservationTile extends StatelessWidget {
  const InBoxReservationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(AppImages.person),
            ),
            title: const Text(AppTexts.inBoxListTileTitle),
            subtitle: Text(
              '${AppTexts.inBoxListTileSubTitle} · ${DateFormat('dd.MM.yyyy').format(
                DateTime.now().toUtc().add(const Duration(hours: 3)),
              )}',
            ),
          ),
        ],
      ),
    );
  }
}
