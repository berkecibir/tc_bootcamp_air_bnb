import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/profile/profile_model.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/profile/profile_repository.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository repository;

  ProfileCubit(this.repository) : super(ProfileInitial());

  Future<void> loadUser() async {
    emit(ProfileLoading());
    final user = await repository.getUserInfo();
    emit(ProfileLoaded(user));
  }

  void updateUser(ProfileModel newUser) {
    repository.updateUser(newUser);
    emit(ProfileLoaded(newUser));
  }

  final List<Map<String, dynamic>> profileItems = [
    {AppTexts.title: AppTexts.personalInfo, AppTexts.icon: Icons.person},
    {AppTexts.title: AppTexts.payments, AppTexts.icon: Icons.payment},
    {AppTexts.title: AppTexts.translation, AppTexts.icon: Icons.translate},
    {
      AppTexts.title: AppTexts.notifications,
      AppTexts.icon: Icons.notifications
    },
    {AppTexts.title: AppTexts.privacy, AppTexts.icon: Icons.privacy_tip},
    {AppTexts.title: AppTexts.travel, AppTexts.icon: Icons.work},
  ];
}
