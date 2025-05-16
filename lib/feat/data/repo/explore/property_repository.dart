import 'package:tc_bootcamp_air_bnb/feat/core/configs/asset/app_images.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/propety_model.dart';

class PropertyRepository {
  List<PropetyModel> getProperties = [
    const PropetyModel(
      id: 1,
      imagePath: AppImages.home1,
      location: AppTexts.istanbul1,
      price: 500,
    ),
    const PropetyModel(
      id: 2,
      imagePath: AppImages.home2,
      location: AppTexts.istanbul2,
      price: 750,
    ),
    const PropetyModel(
      id: 3,
      imagePath: AppImages.home3,
      location: AppTexts.ankara,
      price: 300,
    ),
    const PropetyModel(
      id: 4,
      imagePath: AppImages.home4,
      location: AppTexts.karabuk,
      price: 200,
    ),
  ];
}
