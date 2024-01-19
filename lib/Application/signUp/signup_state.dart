part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    required String result,
  }) = _SignupState;

  factory SignupState.initial() {
    return const SignupState(
      isLoading: false,
      result: '',
    );
  }
}
