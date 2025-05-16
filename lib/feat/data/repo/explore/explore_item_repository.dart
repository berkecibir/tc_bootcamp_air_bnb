import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/explore_item_model.dart';

class ExploreRepository {
  List<ExploreItemModel> getExploreItems() {
    return [
      const ExploreItemModel(icon: Icons.home, title: AppTexts.house),
      const ExploreItemModel(icon: Icons.villa, title: AppTexts.villa),
      const ExploreItemModel(icon: Icons.apartment, title: AppTexts.apartment),
      const ExploreItemModel(icon: Icons.hotel, title: AppTexts.hotel),
      const ExploreItemModel(icon: Icons.cabin, title: AppTexts.cabin),
      const ExploreItemModel(icon: Icons.room, title: AppTexts.rooms),
    ];
  }
}
