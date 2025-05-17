import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/inbox/in_box_item_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/inbox/in_box_item_repository.dart';

class InBoxItemCubit extends Cubit<InBoxItemState> {
  final InBoxItemRepository repository;

  InBoxItemCubit(this.repository)
      : super(
          InBoxItemState(items: [], selectedIndex: 0),
        ) {
    final items = repository.getInBoxItems();
    emit(state.copyWith(items: items));
  }

  void selectIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}

/* import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/inbox/in_box_item_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/inbox/in_box_item_repository.dart';

class InBoxItemCubit extends Cubit<InBoxItemState> {
  final InBoxItemRepository repository;

  InBoxItemCubit(this.repository)
      : super(
          InBoxItemState(items: [], selectedIndex: 0),
        );

  void selectIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void loadExploreItems() {
    final items = repository.getInBoxItems();
    emit(state.copyWith(items: items));
  }
} */
