import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/explore_item_model.dart';

class ExploreItemState {
  final List<ExploreItemModel> items;
  final int selectedIndex;

  ExploreItemState({
    required this.items,
    required this.selectedIndex,
  });

  ExploreItemState copyWith({
    List<ExploreItemModel>? items,
    int? selectedIndex,
  }) {
    return ExploreItemState(
      items: items ?? this.items,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
