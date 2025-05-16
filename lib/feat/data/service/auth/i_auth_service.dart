import 'package:tc_bootcamp_air_bnb/feat/data/model/auth/auth_model.dart';

abstract class IAuthService {
  Future<bool> loginWithPhone(AuthModel model);
}
