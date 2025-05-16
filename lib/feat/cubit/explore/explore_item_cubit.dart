import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_item_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/explore/explore_item_repository.dart';

class ExploreItemCubit extends Cubit<ExploreItemState> {
  final ExploreRepository repository;

  ExploreItemCubit(this.repository)
      : super(ExploreItemState(items: [], selectedIndex: 0)) {
    loadExploreItems();
  }

  void selectIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void loadExploreItems() {
    final items = repository.getExploreItems();
    emit(state.copyWith(items: items));
  }
}
