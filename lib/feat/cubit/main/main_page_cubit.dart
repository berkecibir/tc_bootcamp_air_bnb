import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/main/main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit()
      : super(
          MainPageState(
            selectedIndex: 0,
            pageController: PageController(),
          ),
        );

  void changePage(int index) {
    emit(state.copyWith(selectedIndex: index));
    state.pageController.jumpToPage(index);
  }

  @override
  Future<void> close() {
    state.pageController.dispose();
    return super.close();
  }
}
