import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/inbox/in_box_item_model.dart';

class InBoxItemRepository {
  List<InBoxItemModel> getInBoxItems() {
    return [
      InBoxItemModel(title: AppTexts.inBoxMessage),
      InBoxItemModel(title: AppTexts.inBoxNotifications)
    ];
  }
}
