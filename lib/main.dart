import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/configs/theme/app_theme.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/init/app_init.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/router/app_router.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/auth_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/presentation/auth/auth_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppInit.initDeviceSize(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (_) => AuthCubit()),
      ],
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Airbnb',
        navigatorKey: Navigation.navigationKey,
        initialRoute: AuthPage.id,
        routes: AppRoutes.routes,
      ),
    );
  }
}
