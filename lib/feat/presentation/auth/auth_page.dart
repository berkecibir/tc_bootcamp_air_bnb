import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_colors.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_padding/device_padding.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/device_spacing/device_spacing.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/auth/auth_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/auth/auth_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/explore/explore_page.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/auth_cards.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/auth_or_divider.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/auth_page_initial_message.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_app_bar.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/custom_button.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/phone_input_card.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/welcome_message.dart';
import '../../core/configs/theme/app_theme.dart';

class AuthPage extends StatelessWidget {
  static const String id = AppTexts.authId;
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSucces) {
            Navigation.pushReplace(page: const ExplorePage());
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final bool isButtonEnabled = state is AuthPhoneValid;
          final String phoneNumber =
              state is AuthPhoneValid ? state.phoneNumber : AppTexts.empty;

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
                        CustomButton(
                          onTap: () {
                            if (isButtonEnabled) {
                              context
                                  .read<AuthCubit>()
                                  .submitPhone(phoneNumber);
                            }
                          },
                          child: state is AuthLoading
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2, color: AppColors.white),
                                )
                              : Text(
                                  AppTexts.authCustomButtonText,
                                  style:
                                      AppTheme.appTheme.textTheme.displayMedium,
                                ),
                        ),
                        DeviceSpacing.medium.height,
                        const AuthOrDivider(),
                        DeviceSpacing.medium.height,
                        const Expanded(child: AuthCards()),
                      ],
                    ))),
          );
        },
      ),
    );
  }
}
