part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required bool isLoading,
      required bool isError,
      required String textFieldValue,
      required List<User> userList,
      required List<User> filteredUser,
      required List<Post> postList}) = _SearchState;

  factory SearchState.initaial() {
    return const SearchState(
      postList: [],
      userList: [],
      textFieldValue: "",
      isLoading: false,
      isError: false,
      filteredUser: [],
    );
  }
}
