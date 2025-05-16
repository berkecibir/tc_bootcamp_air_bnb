import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black,
        fixedSize: const Size(100, 45),
      ),
      child: const Row(
        children: [
          Text(
            AppTexts.fabTitle,
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
          Icon(
            Icons.map,
            color: AppColors.white,
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
