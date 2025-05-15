import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/auth/user_model.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/auth/i_auth_repository.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/service/auth/i_auth_service.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final IAuthService service;
  AuthRepositoryImpl(this.service);
  @override
  Future<bool> loginWithPhone(UserModel model) async {
    try {
      return await service.loginWithPhone(model);
    } catch (e) {
      debugPrint('AuthRepoImpl: Login Failed - $e');
      rethrow;
    }
  }
}
