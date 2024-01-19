part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isError,
    required bool isLoading,
    required String? result,
  }) = _Initial;
  factory LoginState.initial() {
    return LoginState(isError: false, isLoading: false, result: null);
  }
}
