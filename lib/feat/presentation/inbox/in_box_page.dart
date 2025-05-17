import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';

class InBoxPage extends StatelessWidget {
  static const String id = AppTexts.inBoxId;
  const InBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: AppTexts.inBoxAppBarTitle),
    );
  }
}
