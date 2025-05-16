import 'package:tc_bootcamp_air_bnb/feat/data/model/auth/auth_model.dart';

abstract class IAuthRepository {
  Future<bool> loginWithPhone(AuthModel model);
}
