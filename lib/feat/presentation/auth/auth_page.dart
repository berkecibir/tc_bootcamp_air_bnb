import 'package:flutter/material.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/auth_cards.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/auth_or_divider.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/auth_page_initial_message.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_button.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/phone_input_card.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/welcome_message.dart';

class AuthPage extends StatefulWidget {
  static const String id = AppTexts.authId;
  const AuthPage({
    super.key,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar.authAppBar(),
        body: Padding(
          padding: DevicePadding.small.onlyHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DeviceSpacing.large.height,
              const Center(child: WelcomeMessage()),
              DeviceSpacing.small.height,
              const CustomPhoneTextField(),
              DeviceSpacing.medium.height,
              const AuthPageInitialMessage(),
              DeviceSpacing.medium.height,
              CustomButton(onTap: () {}),
              DeviceSpacing.medium.height,
              const AuthOrDivider(),
              DeviceSpacing.medium.height,
              const Expanded(
                child: AuthCards(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
