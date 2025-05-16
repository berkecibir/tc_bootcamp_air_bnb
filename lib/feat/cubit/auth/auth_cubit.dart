import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/auth/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void onPhoneChanged(String phone) {
    if (phone.length >= 10) {
      emit(AuthPhoneValid(phone));
    } else {
      emit(AuthInitial());
    }
  }

  void submitPhone(String phone) async {
    emit(AuthLoading());
    await Future.delayed(AppDuration.twoSecond);
    emit(AuthSucces());
  }
}
