import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/auth/auth_model.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/service/auth/i_auth_service.dart';

// mock auth service for auth operations
class AuthServiceImpl extends IAuthService {
  @override
  Future<bool> loginWithPhone(AuthModel model) async {
    await Future.delayed(AppDuration.oneSecond);
    debugPrint('Mock login service for: ${model.phoneNumber}');
    return true;
  }
}
