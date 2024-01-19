part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<Post> post,
    required List<QueryDocumentSnapshot<Object?>> commentSnapshot,
    required bool isPostSaved,
    User? user,
    Object? error,
    String? uid,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      isLoading: false,
      isError: false,
      post: [],
      commentSnapshot: [],
      isPostSaved: false,
    );
  }
}
