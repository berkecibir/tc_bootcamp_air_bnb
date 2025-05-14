import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? centerTitle;

  const CustomAppBar({
    required this.title,
    this.centerTitle,
    super.key,
  });

  factory CustomAppBar.authAppBar() {
    return const CustomAppBar(
      title: AppTexts.authAppBarTitle,
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
