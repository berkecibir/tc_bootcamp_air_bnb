abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthPhoneValid extends AuthState {
  final String phoneNumber;
  AuthPhoneValid(this.phoneNumber);
}

class AuthLoading extends AuthState {}

class AuthSucces extends AuthState {}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}
