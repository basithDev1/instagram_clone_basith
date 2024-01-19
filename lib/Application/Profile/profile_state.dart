part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isError,
    required User user,
    required List<Post> postList,
    required List<User> allUser,
    required User filteredUser,
    required List<Post> currentUserPost,
    required List<Post> filteredUserPost,
    required bool isFollowing,
    required bool isUserSignedOut,
    required List<Post> savedPostList,
  }) = _Initial;

  factory ProfileState.initial() {
    return ProfileState(
      savedPostList: [],
      isFollowing: false,
      filteredUserPost: [],
      currentUserPost: [],
      filteredUser: User.isEmpty(),
      allUser: [],
      postList: [],
      isLoading: false,
      isError: false,
      user: User.isEmpty(),
      isUserSignedOut: false,
    );
  }
}
