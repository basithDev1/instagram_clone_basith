import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Resources/authentication_methods.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthMethod _auth;
  LoginBloc(this._auth) : super(LoginState.initial()) {
    on<_FirstEvent>((event, emit) async {
      emit(const LoginState(
        isError: false,
        isLoading: true,
        result: null,
      ));

      String result =
          await _auth.loginUser(email: event.email, password: event.password);

      if (result != 'succesful') {
        emit(
          LoginState(
            isError: true,
            isLoading: false,
            result: result,
          ),
        );
      } else {
        emit(
          LoginState(
            isError: false,
            isLoading: false,
            result: result,
          ),
        );
      }
    });
  }
}
