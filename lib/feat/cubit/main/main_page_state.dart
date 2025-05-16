import 'package:flutter/material.dart';

class MainPageState {
  final int selectedIndex;
  final PageController pageController;

  MainPageState({
    required this.selectedIndex,
    required this.pageController,
  });

  MainPageState copyWith({
    int? selectedIndex,
    PageController? pageController,
  }) {
    return MainPageState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      pageController: pageController ?? this.pageController,
    );
  }
}
