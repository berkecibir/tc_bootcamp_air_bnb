import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({
    super.key,
    required this.profileItems,
  });

  final List<Map<String, dynamic>> profileItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider(color: Colors.grey);
      },
      itemCount: profileItems.length,
      itemBuilder: (context, index) {
        final item = profileItems[index];
        return ListTile(
          contentPadding: DevicePadding.xsmall.onlyRight,
          leading: Icon(item[AppTexts.icon]),
          title: Text(
            item[AppTexts.title],
            style: AppTheme.appTheme.textTheme.bodyLarge?.copyWith(
              fontSize: 16,
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}
