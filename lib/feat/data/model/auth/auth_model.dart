import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';

// mock auth model for auth operations
class AuthModel {
  final String phoneNumber;
  const AuthModel({required this.phoneNumber});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
        phoneNumber: json[AppTexts.phoneNumberModel] ?? AppTexts.empty);
  }
}
