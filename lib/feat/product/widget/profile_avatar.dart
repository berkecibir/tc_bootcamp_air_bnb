import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/profile/profile_model.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.user,
  });

  final ProfileModel user;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage(user.imageUrl),
    );
  }
}
