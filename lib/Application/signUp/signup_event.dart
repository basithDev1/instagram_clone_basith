part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.firstEvent({
    required String username,
    required String email,
    required String password,
    required String bio,
    required Uint8List image,
  }) = _FirstEvent;
}
