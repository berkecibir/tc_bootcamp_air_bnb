import 'package:tc_bootcamp_air_bnb/feat/data/model/inbox/in_box_item_model.dart';

class InBoxItemState {
  final List<InBoxItemModel> items;
  final int selectedIndex;

  InBoxItemState({
    required this.items,
    required this.selectedIndex,
  });

  InBoxItemState copyWith({
    List<InBoxItemModel>? items,
    int? selectedIndex,
  }) {
    return InBoxItemState(
      items: items ?? this.items,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
