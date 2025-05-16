import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/main/main_page_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/main/main_page_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/explore/explore_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/profile/profile_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/wishlist/wish_list_page.dart';

class MainPage extends StatelessWidget {
  static String id = AppTexts.mainId;

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (context, state) {
          return Scaffold(
            body: PageView(
              controller: state.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ExplorePage(),
                WishlistPage(),
                ProfilePage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColors.white,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.grey,
              currentIndex: state.selectedIndex,
              onTap: (index) => context.read<MainPageCubit>().changePage(index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: AppTexts.exploreAppBartitle,
                  activeIcon: Icon(
                    Icons.search,
                    color: AppColors.primary,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: AppTexts.wishlistAppBarTitle,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: AppTexts.profileAppBarTitle,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
