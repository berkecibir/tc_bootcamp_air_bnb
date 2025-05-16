import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/profile/profile_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/account_settings.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/profile_avatar.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/profile_list_view.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/user_name.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/view_profile.dart';

class ProfilePage extends StatelessWidget {
  static const String id = AppTexts.profileId;
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileCubit>().loadUser();
    });

    return Scaffold(
      appBar: const CustomAppBar(title: AppTexts.profileAppBarTitle),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          final profileItems = context.read<ProfileCubit>().profileItems;
          if (state is ProfileLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProfileLoaded) {
            final user = state.user;
            return Padding(
                padding: DevicePadding.medium.onlyHorizontal,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileAvatar(user: user),
                      DeviceSpacing.medium.height,
                      UserName(user: user),
                      DeviceSpacing.small.height,
                      Padding(
                        padding: DevicePadding.xsmall.onlyHorizontal,
                        child: const ViewProfile(),
                      ),
                      DeviceSpacing.small.height,
                      const Divider(thickness: 1.5),
                      DeviceSpacing.small.height,
                      const AccountSettings(),
                      DeviceSpacing.medium.height,
                      Expanded(
                          child: ProfileListView(profileItems: profileItems))
                    ]));
          } else if (state is ProfileInitial) {
            return const Center(child: Text(AppTexts.profileLoading));
          } else {
            return const Center(child: Text(AppTexts.profileError));
          }
        },
      ),
    );
  }
}
