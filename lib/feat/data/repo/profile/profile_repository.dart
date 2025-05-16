import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/profile/profile_model.dart';

class ProfileRepository {
  ProfileModel user = const ProfileModel(
    userName: AppTexts.userName,
    imageUrl: AppTexts.randomImage,
  );

  Future<ProfileModel> getUserInfo() async {
    await Future.delayed(AppDuration.medium);
    return user;
  }

  void updateUser(ProfileModel newUser) {
    user = newUser;
  }
}
