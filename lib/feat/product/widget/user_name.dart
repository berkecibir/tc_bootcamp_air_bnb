import 'package:flutter/widgets.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/profile/profile_model.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.user,
  });

  final ProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Text(
      user.userName,
      style: AppTheme.appTheme.textTheme.labelLarge,
    );
  }
}
