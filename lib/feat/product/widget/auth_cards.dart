import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/border/app_border_radius.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/sizes/app_size.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_size/device_size.dart';

class AuthCards extends StatelessWidget {
  const AuthCards({super.key});

  List<String> get _accounts => const [
        'Continue with Phone',
        'Continue with Apple',
        'Continue with Google',
        'Continue with Facebook',
      ];

  double get authCardHeightValue => 0.07;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _accounts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: DevicePadding.small.onlyBottom,
          child: GestureDetector(
            onTap: () {
              debugPrint('Selected: ${_accounts[index]}');
            },
            child: Container(
              height: DeviceSize.height! * authCardHeightValue,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: AppBorderRadius.all(
                  AppSizes.large,
                ),
              ),
              child: Center(
                child: Text(
                  _accounts[index],
                  style: AppTheme.appTheme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
