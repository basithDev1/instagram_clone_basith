import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Resources/authentication_methods.dart';
part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthMethod _auth;
  SignupBloc(this._auth) : super(SignupState.initial()) {
    on<_FirstEvent>(
      (event, emit) async {
        emit(
          const SignupState(
            isLoading: true,
            result: "",
          ),
        );

        String result = await _auth.signUp(
          username: event.username,
          email: event.email,
          password: event.password,
          image: event.image,
        );

        print("from blocc  $result");

        if (result == 'succesful') {
          emit(
            SignupState(
              isLoading: false,
              result: result,
            ),
          );
        } else {
          emit(
            SignupState(
              isLoading: false,
              result: result,
            ),
          );
        }
      },
    );
  }
}
