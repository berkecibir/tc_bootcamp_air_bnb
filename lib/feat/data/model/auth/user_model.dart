import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

class UserModel {
  final String phoneNumber;
  UserModel({required this.phoneNumber});

  Map<String, dynamic> toJson() => {AppTexts.phoneNumberModel: phoneNumber};

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(phoneNumber: json[AppTexts.phoneNumberModel] ?? '');
  }
}
