import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/asset/app_vectors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/main/main_page_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/main/main_page_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/explore/explore_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/inbox/in_box_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/profile/profile_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/trips/trips_page.dart';
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
                TripsPage(),
                InBoxPage(),
                ProfilePage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.white,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.grey,
              currentIndex: state.selectedIndex,
              onTap: (index) => context.read<MainPageCubit>().changePage(index),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppVectors.exploreIcon,
                  ),
                  label: AppTexts.exploreAppBartitle,
                  activeIcon: SvgPicture.asset(
                    AppVectors.exploreIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppVectors.favoriteIcon),
                  label: AppTexts.wishlistAppBarTitle,
                  activeIcon: SvgPicture.asset(
                    AppVectors.favoriteIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppVectors.airBbnIcon),
                  label: AppTexts.tripsAppBarTitle,
                  activeIcon: SvgPicture.asset(
                    AppVectors.airBbnIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppVectors.messageIcon),
                  label: AppTexts.inBoxAppBarTitle,
                  activeIcon: SvgPicture.asset(
                    AppVectors.messageIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppVectors.profileIcon),
                  label: AppTexts.profileAppBarTitle,
                  activeIcon: SvgPicture.asset(
                    AppVectors.profileIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.primary, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
