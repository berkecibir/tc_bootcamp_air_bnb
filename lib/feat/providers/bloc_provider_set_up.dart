import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/auth/auth_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_item_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/explore/explore_property_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/inbox/in_box_item_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/main/main_page_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/profile/profile_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/trips/reservation_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/explore/explore_item_repository.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/explore/property_repository.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/inbox/in_box_item_repository.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/profile/profile_repository.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/trips/reservation_repository.dart';

class BlocProvidersSetUp {
  static List<SingleChildWidget> providers = [
    BlocProvider<AuthCubit>(
      create: (_) => AuthCubit(),
    ),
    BlocProvider<ExploreItemCubit>(
      create: (_) => ExploreItemCubit(ExploreRepository()),
    ),
    BlocProvider<ExplorePropertyCubit>(
      create: (_) => ExplorePropertyCubit(PropertyRepository()),
    ),
    BlocProvider<ProfileCubit>(
      create: (_) => ProfileCubit(ProfileRepository()),
    ),
    BlocProvider<MainPageCubit>(
      create: (_) => MainPageCubit(),
    ),
    BlocProvider<InBoxItemCubit>(
      create: (_) => InBoxItemCubit(InBoxItemRepository()),
    ),
    BlocProvider<ReservationCubit>(
      create: (_) => ReservationCubit(ReservationRepository()),
    ),
  ];
}
