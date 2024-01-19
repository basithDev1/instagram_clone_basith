part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.firstEvent() = _FirstEvent;
  const factory ProfileEvent.getUserEvent() = _GetUserEvent;
  const factory ProfileEvent.refreshCurrentUser() = _RefreshCurrentUser;

  const factory ProfileEvent.searchScreenPostTapped({required String uid}) =
      _SearchScreenPostTapped;
  const factory ProfileEvent.followUser({required String friendUid}) =
      _FollowUser;
  const factory ProfileEvent.savedPostDisplaying() = _SavedPostDisplaying;

  const factory ProfileEvent.signOutUser() = _SignOutUser;
}
